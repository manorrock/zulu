# Zulu

## Important

As of January 18th, 2019 this repository will only update the ARM32v6 images.
For the amd64 images please go to the official Docker repositories available
[here](https://hub.docker.com/u/azul).

There are several ways to use this container. A couple of examples are illustrated below:

# Mount a host directory and run the Java compiler against a source file

    docker run -v $PWD:/mnt -i manorrock/zulu:arm32v6 javac MyTest.java
----

# Mount a host directory and run Java

    docker run -v $PWD:/mnt -i manorrock/zulu:arm32v6 java -cp . MyTest

---
Please file issues/questions at https://github.com/manorrock/zulu/issues
