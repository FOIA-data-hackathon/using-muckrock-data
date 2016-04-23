jq 'group_by(._agency) | map ({"agency": .[0]._agency, "types": (group_by(._type) | map({"type": .[0]._type, "count":length}))})' <mimetypes.json >mimetypes_by_agency.json
jq 'group_by(._agency) | map ({"agency": .[0]._agency, "types": (group_by(._type) | map({"type": .[0]._type, "count":length}))})' <filetypes.json >filetypes_by_agency.json

jq 'group_by(._type) | map ({"type": .[0]._type, "agencies": (group_by(._agency) | map({"agency": .[0]._agency, "count":length}))})' <filetypes.json >agencies_by_filetype.json
jq 'group_by(._type) | map ({"type": .[0]._type, "agencies": (group_by(._agency) | map({"agency": .[0]._agency, "count":length}))})' <mimetypes.json >agencies_by_mimetype.json

