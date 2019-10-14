mkdir -p mods

export JAVA_HOME=$JAVA13_HOME

$JAVA_HOME/bin/javac --module-source-path src -d mods -m authors,books