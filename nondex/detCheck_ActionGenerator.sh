cd ActionGenerator
git submodule init
git submodule update
git checkout 10f4a3e
cp ../../nondex_det/ActionGenerator/pom.xml ./
mvn clean
mvn compile > detOut
echo "Number of errors detected by determinism checker:"
grep -wr "\[ERROR\] " detOut | grep "java" |  wc -l
