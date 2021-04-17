#!/bin/sh
  
set -e

test_install_python3() {

    echo "Testing python3 package"
    for py in $(py3versions -r 2>/dev/null) ; do
        cd "$AUTOPKGTEST_TMP" ;
        echo "Testing with $py:" ;
        $py -c "import pacu; print(pacu)" ;
    done

}

###################################
# Main
###################################

for function in "$@"; do
        $function
done
