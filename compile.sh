HADOOP_DIRECTORY=~/tools/hadoop/hadoop-2.7.3/share/hadoop
HADOOP_VERSION=2.7.3
CLASSES=wordcount_classes

rm -rf $CLASSES
rm wordcount.jar
mkdir $CLASSES

HADOOP_CLASSPATH="$HADOOP_DIRECTORY/common/hadoop-common-$HADOOP_VERSION.jar"
HADOOP_CLASSPATH="$HADOOP_CLASSPATH:$HADOOP_DIRECTORY/mapreduce/hadoop-mapreduce-client-core-$HADOOP_VERSION.jar"
HADOOP_CLASSPATH="$HADOOP_CLASSPATH:$HADOOP_DIRECTORY/common/lib/commons-cli-1.2.jar"

javac -classpath $HADOOP_CLASSPATH -d wordcount_classes WordCount.java
jar -cvf ./wordcount.jar -C wordcount_classes/ .
