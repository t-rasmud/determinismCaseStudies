cd slf4j
git submodule init
git submodule update
git checkout 52fcbbe8
cp ../../nondex_det/slf4j/pom.xml ./
mvn clean
mvn compile > detOut
echo "Number of errors detected by determinism checker:"
grep -wr "\[ERROR\] " detOut | grep "java" |  wc -l
