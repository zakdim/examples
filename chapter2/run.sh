mkdir -p out

export JAVA_HOME=$JAVA9_HOME

$JAVA_HOME/bin/javac -d out -sourcepath src $(find src -name '*.java')
$JAVA_HOME/bin/java -cp out NotInModule
