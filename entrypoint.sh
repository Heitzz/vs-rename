
#!/bin/bash -l

# oldName = $1
# newName = $2

set -eu

begin_cmd="/renameproject begin \\
    /k:\"${1//[$'\t\r\n']:?Please set the oldName.}\" \\
    /n:\"${2//[$'\t\r\n']:?Please set the newName.}\""

end_cmd="/renameproject end"

sh -c "$end_cmd"