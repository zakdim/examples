mkdir -p out

# V1 - Use java distribution that already contains java-fx mods
# export JAVA_HOME=$JAVA11_FX_HOME
# $JAVA_HOME/bin/javac -d out --module-source-path src -m easytext.cli,easytext.gui,easytext.analysis
# Run cli
# $JAVA_HOME/bin/java --module-path out -m easytext.cli/javamodularity.easytext.cli.Main input.txt
# Run gui
# $JAVA_HOME/bin/java --module-path out -m easytext.gui/javamodularity.easytext.gui.Main


# V2 - # OR use the latest JavaFX 13 SDK and MODS installed locally.
# Set the following environment variables in ~/.bashrc (~/.bash_profile)
# export JAVA_FX=$HOME/opt/javafx-sdk/lib
# export JAVA_FX_MODS=$HOME/opt/javafx-jmods
export JAVA_HOME=$JAVA13_HOME
# Specify path to JavaFX mods as they are not part of Java 13
$JAVA_HOME/bin/javac --module-path $JAVA_FX_MODS -d out --module-source-path src -m easytext.cli,easytext.gui,easytext.analysis
# Run gui - specify path to JavaFX SDK
$JAVA_HOME/bin/java --module-path $JAVA_FX:out -m easytext.gui/javamodularity.easytext.gui.Main