#!/bin/bash

export JAVA_HOME=$JAVA13_HOME

# $JAVA_HOME/bin/jlink --module-path mods/:$JAVA_HOME/jmods \
#     --add-modules easytext.cli \
#     --output image

# Include providers
$JAVA_HOME/bin/jlink --module-path mods/:$JAVA_HOME/jmods \
    --add-modules easytext.cli \
    --add-modules easytext.analysis.coleman \
    --add-modules easytext.analysis.kincaid \
    --output image

# Verify included modules
./image/bin/java --list-modules

# Run application from image
./image/bin/java -m easytext.cli/javamodularity.easytext.cli.Main ../exampletext.txt