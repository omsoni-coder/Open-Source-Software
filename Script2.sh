#!/bin/bash
# Script 2: FOSS Package Inspector

PACKAGE="python3"

echo "Checking package: $PACKAGE"

# Check installation
if dpkg -l | grep -q "^ii  $PACKAGE"; then
    echo "$PACKAGE is installed."
    VERSION=$(python3 --version)
    echo "Version: $VERSION"
else
    echo "$PACKAGE is NOT installed."
fi

# Case statement description
case $PACKAGE in
    python3)
        echo "Python: A powerful open-source programming language used worldwide."
        ;;
    *)
        echo "Unknown package"
        ;;
esac