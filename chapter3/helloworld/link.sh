export JAVA_HOME=$JAVA9_HOME

$JAVA_HOME/bin/jlink --module-path mods/:$JAVA_HOME/jmods \
    --add-modules helloworld \
    --launcher hello=helloworld \
    --output helloworld-image