mkdir -p out

export JAVA_HOME=$JAVA13_HOME

# $JAVA_HOME/bin/javac -d out --module-source-path src -m easytext.cli,easytext.gui,easytext.analysis.api,easytext.analysis.coleman,easytext.analysis.factory,easytext.analysis.kincaid
# $JAVA_HOME/bin/java --module-path out -m easytext.cli/javamodularity.easytext.cli.Main ../exampletext.txt

# Add JavaFX modules path wich do not ship with Java 
$JAVA_HOME/bin/javac --module-path $JAVA_FX_MODS -d out --module-source-path src -m easytext.cli,easytext.gui,easytext.analysis.api,easytext.analysis.coleman,easytext.analysis.factory,easytext.analysis.kincaid
$JAVA_HOME/bin/java --module-path out -m easytext.cli/javamodularity.easytext.cli.Main ../exampletext.txt
# Or gui
$JAVA_HOME/bin/java --module-path $JAVA_FX:out -m easytext.gui/javamodularity.easytext.gui.Main
