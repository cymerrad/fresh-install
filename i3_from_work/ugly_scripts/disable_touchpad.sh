xinput --disable `xinput | cat | sed -n -e 's/.*DLL06F3.*id=\([0-9]*\).*/\1/p'`
