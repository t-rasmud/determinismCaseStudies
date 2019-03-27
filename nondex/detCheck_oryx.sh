cd oryx
git submodule init
git submodule update
git checkout 833c3fea
cp ../../nondex_det/oryx/pom.xml ./
mvn clean
mvn compile > detOut
echo "Number of errors detected by determinism checker:"
grep -wr "\[ERROR\] " detOut | grep "java" |  wc -l
