mkdir -p out

export JAVA_HOME=$JAVA9_HOME

$JAVA_HOME/bin/javac -d out --module-source-path src -m easytext.cli,easytext.analysis
# This works too, since easytext.cli requires easytext.analysis
# $JAVA_HOME/bin/javac -d out --module-source-path src -m easytext.cli

$JAVA_HOME/bin/java --module-path out -m easytext.cli/javamodularity.easytext.cli.Main input.txt
