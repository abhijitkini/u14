#!/bin/bash -e

echo "================= Installing default-jdk & jre ==================="
apt-get install default-jre
apt-get install default-jdk

echo "================= Installing openjdk-6-jdk ==================="
apt-get install -y openjdk-6-jdk
update-alternatives --set java /usr/lib/jvm/java-6-openjdk-amd64/jre/bin/java
update-alternatives --set javac /usr/lib/jvm/java-6-openjdk-amd64/bin/javac
update-alternatives --set javaws /usr/lib/jvm/java-6-openjdk-amd64/jre/bin/javaws

echo "================ Installing oracle-java7-installer ================="
echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections
add-apt-repository -y ppa:webupd8team/java
apt-get update
apt-get install -y oracle-java7-installer
update-alternatives --set java /usr/lib/jvm/java-7-oracle/jre/bin/java
update-alternatives --set javac /usr/lib/jvm/java-7-oracle/bin/javac
update-alternatives --set javaws /usr/lib/jvm/java-7-oracle/jre/bin/javaws

echo "================ Installing oracle-java8-installer ================="
echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections
add-apt-repository -y ppa:webupd8team/java
apt-get update
apt-get install -y oracle-java8-installer
update-alternatives --set java /usr/lib/jvm/java-8-oracle/jre/bin/java
update-alternatives --set javac /usr/lib/jvm/java-8-oracle/bin/javac
update-alternatives --set javaws /usr/lib/jvm/java-8-oracle/jre/bin/javaws
echo 'export JAVA_HOME=/usr/lib/jvm/java-8-oracle' >> $HOME/.bashrc
echo 'export PATH=$PATH:/usr/lib/jvm/java-8-oracle/jre/bin' >> $HOME/.bashrc
