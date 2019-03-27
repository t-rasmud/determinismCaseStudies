cd commons-cli
git submodule init
git submodule update
git checkout a0dcd6a
cp ../../nondex_det/commons-cli/pom.xml ./
mvn clean
mvn compile > detOut
echo "Number of errors detected by determinism checker:"
grep -wr "\[ERROR\] " detOut | grep "java" |  wc -l
