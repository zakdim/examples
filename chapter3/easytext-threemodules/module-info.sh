#!/bin/bash

export JAVA_HOME=$JAVA13_HOME

# JavaFX modules are not part of JavaSE. The are installed separately
# locally. Include JavaFX modules on the module-path.
$JAVA_HOME/bin/java --module-path $JAVA_FX --describe-module javafx.controls