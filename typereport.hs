{-# LANGUAGE DeriveGeneric, OverloadedStrings #-}

import Prelude hiding (takeWhile)
import GHC.Generics (Generic)

import Control.Applicative (optional, some)
import Data.Aeson (FromJSON, ToJSON)
import qualified Data.Aeson as A
import Data.Attoparsec.ByteString (inClass, parseOnly, Parser, string, takeTill, takeWhile, word8)
import qualified Data.ByteString as B
import qualified Data.ByteString.Lazy as BL
import Data.Char (ord)
import Data.Monoid ((<>))
import Data.Text (Text)
import Data.Text.Encoding (decodeUtf8)
import qualified Data.Yaml as Y
import Options.Applicative.Builder (argument, auto, fullDesc, info, long, metavar, option, showDefault, str, value)
import Options.Applicative.Extra (execParser)
import qualified Options.Applicative.Types as OAT
import System.Environment (getArgs)

data F = F {
    _jurisdiction :: Text
  , _agency :: Text
  , _request :: Text
  , _filename :: Text
  , _type :: Text
} deriving (Eq, Generic, Read, Show)

instance FromJSON F
instance ToJSON F

typeline :: Parser F
typeline = do _ <- optional dotslash
              j <- fmap decodeUtf8 untilSlash
              a <- fmap decodeUtf8 untilSlash
              r <- fmap decodeUtf8 untilSlash
              f <- fmap decodeUtf8 untilColon
              _ <- takeWhile (inClass " \t")
              t <- fmap decodeUtf8 untilNewline
              return $ F j a r f t
    where
        dotslash = string "./"
        untilSlash = takeTill (==(fromIntegral (ord '/'))) <* word8 (fromIntegral (ord '/'))
        untilColon = takeTill (==(fromIntegral (ord ':'))) <* word8 (fromIntegral (ord ':'))
        untilNewline = takeTill (inClass "\r\n") <* takeWhile (inClass "\r\n")

main :: IO ()
main = do
    o <- execParser (info trO fullDesc)
    fn <- fmap head getArgs
    bs <- B.readFile fn
    let p = parseOnly (some typeline) bs
    either (error "Parse failure") (output (trOutputFormat o)) p
    where
        output JSON = BL.putStr . flip BL.append (BL.singleton 0x0a) . A.encode
        output YAML = B.putStr . Y.encode

data TROutputFormat = JSON | YAML
    deriving (Bounded, Enum, Eq, Read, Show)

data TROptions = TROptions {
    trOutputFormat :: TROutputFormat
  , trFileName :: String
}

trO :: OAT.Parser TROptions
trO = TROptions
    <$> option auto
        ( long "output-format"
        <> metavar "FORMAT"
        <> value JSON
        <> showDefault
        )
    <*> argument str ( metavar "TARGET" )
