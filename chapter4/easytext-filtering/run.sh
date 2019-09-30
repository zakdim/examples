mkdir -p mods

export JAVA_HOME=$JAVA13_HOME

$JAVA_HOME/bin/javac -d mods --module-source-path src -m easytext.analysis.api,easytext.analysis.coleman,easytext.analysis.kincaid,easytext.filtering

$JAVA_HOME/bin/java --module-path mods -m easytext.filtering/javamodularity.easytext.filtering.Main
