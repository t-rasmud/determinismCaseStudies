cd assertj-core
git submodule init
git submodule update
git checkout e8a696e8d
cp ../../nondex_det/assertj-core/pom.xml ./
cp ../../nondex_det/assertj-core/Maps.java src/main/java/org/assertj/core/util/Maps.java
mvn clean
mvn compile > detOut
echo "Number of errors detected by determinism checker:"
grep -wr "\[ERROR\] " detOut | grep "java" |  wc -l
