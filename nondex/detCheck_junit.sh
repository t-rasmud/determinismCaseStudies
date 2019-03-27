cd junit4
git submodule init
git submodule update
git checkout 1d63100e
cp ../../nondex_det/junit4/pom.xml ./
cp ../../nondex_det/junit4/MethodSorter.java src/main/java/org/junit/internal/MethodSorter.java
mvn clean
mvn compile > detOut
echo "Number of errors detected by determinism checker:"
grep -wr "\[ERROR\] " detOut | grep "java" |  wc -l
