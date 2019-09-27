mkdir -p mods

export JAVA_HOME=$JAVA13_HOME

# $JAVA_HOME/bin/javac --module-source-path src -d mods -m easytext.analysis.api,easytext.analysis.coleman,easytext.analysis.kincaid,easytext.gui
# $JAVA_HOME/bin/java --module-path mods -m easytext.gui/javamodularity.easytext.gui.Main ../exampletext.txt

# Add JavaFX modules path wich do not ship with Java 
$JAVA_HOME/bin/javac --module-path $JAVA_FX_MODS --module-source-path src -d mods -m easytext.analysis.api,easytext.analysis.coleman,easytext.analysis.kincaid,easytext.gui
$JAVA_HOME/bin/java --module-path $JAVA_FX:mods -m easytext.gui/javamodularity.easytext.gui.Main ../exampletext.txt
