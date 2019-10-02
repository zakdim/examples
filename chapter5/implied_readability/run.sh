mkdir -p mods

export JAVA_HOME=$JAVA13_HOME

# $JAVA_HOME/bin/javac --module-source-path src -d mods -m easytext.client,easytext.domain.api,easytext.repository.api

$JAVA_HOME/bin/javac -Xlint:exports --module-source-path src -d mods -m easytext.client,easytext.domain.api,easytext.repository.api

$JAVA_HOME/bin/java --module-path mods -m easytext.client/easytext.client.Client
