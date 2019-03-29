cd scribejava
git submodule init
git submodule update
git checkout 0311a435
cp ../../nondex_det/scribejava/pom.xml ./
cp ../../nondex_det/scribejava/MapUtils.java src/main/java/org/scribe/utils/
mvn clean
mvn compile > detOut
echo "Number of errors detected by determinism checker:"
grep -wr "\[ERROR\] " detOut | grep "java" |  wc -l
