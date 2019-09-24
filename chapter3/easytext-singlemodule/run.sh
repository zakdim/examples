mkdir -p out
mkdir -p mods

export JAVA_HOME=$JAVA9_HOME

# Build exploded module
$JAVA_HOME/bin/javac -d out --module-source-path src -m easytext
# Build jar module
$JAVA_HOME/bin/jar -cfe mods/easytext.jar javamodularity.easytext.Main -C out/easytext .

# Run from exploded module
# $JAVA_HOME/bin/java --module-path out -m easytext/javamodularity.easytext.Main
# Or run from module jar
$JAVA_HOME/bin/java --module-path mods -m easytext input.txt
