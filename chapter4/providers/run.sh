mkdir -p mods

export JAVA_HOME=$JAVA13_HOME

$JAVA_HOME/bin/javac --module-source-path src -d mods -m main,provider.method.example,provider.factory.example
$JAVA_HOME/bin/java --module-path mods -m main/javamodularity.providers.main.Main
