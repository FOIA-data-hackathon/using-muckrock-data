# using-muckrock-data
Scripts, tools and insights for working with MuckRock's API.


* __MuckRock__'s [newly released bulk data](https://www.muckrock.com/news/archives/2016/apr/16/join-muckrock-and-buzzfeed-hack-foia-april-23rd/). Covers FOIA requests submitted through their service — as well as data on government FOIA offices and officers..

# API 

The easiest way to use MuckRock's data is via the CSVs and bulk download, but we also have an API that allows access to the freshest data. [Examples of the API are available are here](https://github.com/MuckRock/API-examples); possibly of particular interest there's also a [filing example](https://www.muckrock.com/news/archives/2016/apr/16/join-muckrock-and-buzzfeed-hack-foia-april-23rd/) to automate filing if you have an agency and jurisdiction's ID, which are available in the agency and jurisdiction CSVs.

You can also just google MuckRock + agnency or jurisdiction name and grab the number at the end of the URL to get an entity's ID.


# Data Dictionary

Many pieces of the data dictionary live on [status](blob/master/status.md).
