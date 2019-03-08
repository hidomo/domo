#!/bin/bash
cmds="make cmake python2 pip2 lldb gdb"
workspaces=$(ls -d /Users/fancl20/Workspace/*/|xargs|tr ' ' ',')
tmpfss=$(eval "echo '--tmpfs '{${workspaces}}build:exec")

for cmd in ${cmds}; do
    echo '#!/bin/bash'$'\n' \
         "export DOMO_RUN_ARGS=\"--privileged --net=host ${tmpfss}\""$'\n' \
         'export DOMO_CMD=workspace'$'\n' \
         'domoExec '$cmd' "$@"' > ./bin/workspace/$cmd
    chmod +x ./bin/workspace/$cmd
done

cat ./rsync.sh >> ./bin/workspace/make