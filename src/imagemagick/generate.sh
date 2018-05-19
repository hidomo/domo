#!/bin/bash
cmds="animate compare composite conjure convert display identify import mogrify montage stream"
for cmd in ${cmds}; do
    echo '#!/bin/bash'$'\n' \
         'export DOMO_CMD=imagemagick'$'\n' \
         'domoRun '$cmd' "$@"' > ./bin/$cmd
    chmod +x ./bin/$cmd
done