cd reflectasm
git submodule init
git submodule update
git checkout 455f612
cp ../../nondex_det/reflectasm/pom.xml ./
cp ../../nondex_det/reflectasm/FieldAccess.java ./src/com/esotericsoftware/reflectasm/
mvn clean
mvn compile > detOut
echo "Number of errors detected by determinism checker:"
grep -wr "\[ERROR\] " detOut | grep "java" |  wc -l
