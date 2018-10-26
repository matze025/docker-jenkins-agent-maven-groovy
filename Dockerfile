FROM openshift/jenkins-agent-maven-35-centos7

ENV GROOVY_VERSION=2.5.3

USER 0

RUN cd /tmp && \
    wget https://www-eu.apache.org/dist/groovy/$GROOVY_VERSION/distribution/apache-groovy-binary-$GROOVY_VERSION.zip && \
    unzip apache-groovy-binary-$GROOVY_VERSION.zip && \
    mv groovy-$GROOVY_VERSION /groovy && \
    rm apache-groovy-binary-$GROOVY_VERSION.zip

ENV GROOVY_HOME /groovy
ENV PATH $GROOVY_HOME/bin/:$PATH


USER 1001
