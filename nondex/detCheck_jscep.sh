cd jscep
git submodule init
git submodule update
git checkout a224cc25
cp ../../nondex_det/jscep/pom.xml ./
cp ../../nondex_det/jscep/PkiMessageDecoder.java src/main/java/org/jscep/message/
mvn clean
mvn compile > detOut
echo "Number of errors detected by determinism checker:"
grep -wr "\[ERROR\] " detOut | grep "java" |  wc -l
