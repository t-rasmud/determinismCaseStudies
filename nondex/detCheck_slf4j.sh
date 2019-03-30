cd slf4j
git submodule init
git submodule update
git checkout 52fcbbe8
cp ../../nondex_det/slf4j/pom.xml ./
cp ../../nondex_det/slf4j/SubstitutableLoggerTest.java slf4j-api/src/test/java/org/slf4j/helpers/
mvn clean
mvn compile > detOut
echo "Number of errors detected by determinism checker:"
grep -wr "\[ERROR\] " detOut | grep "java" |  wc -l
