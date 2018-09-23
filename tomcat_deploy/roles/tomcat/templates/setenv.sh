export JAVA_HOME=/usr/lib/jvm/java-1.7.0-openjdk-amd64
export CATALINA_HOME=/opt/tomcat
{% if env == "DEV" %}
export CATALINA_OPTS="$CATALINA_OPTS -Xms{{ DEV.xms }}"
export CATALINA_OPTS="$CATALINA_OPTS -Xmx{{ DEV.xmx }}"
{% elif env == "PROD" %}
export CATALINA_OPTS="$CATALINA_OPTS -Xms{{ PROD.xms }}"
export CATALINA_OPTS="$CATALINA_OPTS -Xmx{{ PROD.xmx }}"
{% endif %}
