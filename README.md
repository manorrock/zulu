# A dockerized Zulu

There are several ways to use this container. A couple of examples are illustrated below:

## Mount a host directory and run the Java compiler against a source file

    docker run -v $PWD:/mnt -i manorrock/zulu javac MyTest.java

## Mount a host directory and run Java

    docker run -v $PWD:/mnt -i manorrock/zulu java -cp . MyTest
