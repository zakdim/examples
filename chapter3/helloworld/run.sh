mkdir -p out
mkdir -p mods

export JAVA_HOME=$JAVA9_HOME

# $JAVA_HOME/bin/javac -d out/helloworld \
#     src/helloworld/com/javamodularity/helloworld/HelloWorld.java \
#     src/helloworld/module-info.java
# OR
$JAVA_HOME/bin/javac -d out/helloworld $(find src -name '*.java')

# Make sure mods directory exists
$JAVA_HOME/bin/jar -cfe mods/helloworld.jar com.javamodularity.helloworld.HelloWorld -C out/helloworld .

# Run exploded module
# $JAVA_HOME/bin/java --module-path out \
#     --module helloworld/com.javamodularity.helloworld.HelloWorld
# OR run module jar
$JAVA_HOME/bin/java --module-path mods --module helloworld

# Trace module resolution
$JAVA_HOME/bin/java --show-module-resolution --limit-modules java.base --module-path mods --module helloworld
# Shows java.base resolution
$JAVA_HOME/bin/java --show-module-resolution --module-path mods --module helloworld
# More module info
$JAVA_HOME/bin/java -Xlog:module=debug --show-module-resolution --module-path mods --module helloworld