mkdir -p out

export JAVA_HOME=$JAVA11_FX_HOME

$JAVA_HOME/bin/javac -d out --module-source-path src -m easytext.cli,easytext.gui,easytext.analysis

# Run cli
# $JAVA_HOME/bin/java --module-path out -m easytext.cli/javamodularity.easytext.cli.Main
# $JAVA_HOME/bin/java --module-path out -m easytext.cli/javamodularity.easytext.cli.Main input.txt

# Run gui
$JAVA_HOME/bin/java --module-path out -m easytext.gui/javamodularity.easytext.gui.Main
