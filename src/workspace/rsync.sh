finish() {
    domoExec mkdir -p /remote$(pwd)/external_build/Install
    domoExec rsync -a --delete $(pwd)/external_build/Install/include /remote$(pwd)/external_build/Install &> /dev/null || true
}
trap finish EXIT 
