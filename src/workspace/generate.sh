#!/bin/bash
cmds="make cmake python pip python2 pip2 lldb gdb"
for cmd in ${cmds}; do
    echo '#!/bin/bash'$'\n' \
         'export DOMO_RUN_ARGS="--privileged --net=host"'$'\n' \
         'export DOMO_CMD=workspace'$'\n' \
         'domoExec '$cmd' "$@"' > ./bin/workspace/$cmd
    chmod +x ./bin/workspace/$cmd
done