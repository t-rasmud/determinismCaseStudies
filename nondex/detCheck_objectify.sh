cd objectify
git submodule init
git submodule update
git checkout 819eb72f
cp ../../nondex_det/objectify/pom.xml ./
cp ../../nondex_det/objectify/SaverImpl.java src/main/java/com/googlecode/objectify/impl/
mvn clean
mvn compile > detOut
echo "Number of errors detected by determinism checker:"
grep -wr "\[ERROR\] " detOut | grep "java" |  wc -l
