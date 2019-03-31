cd wsdoc
git submodule init
git submodule update
git checkout 89480c5
cp ../../nondex_det/wsdoc/pom.xml ./
cp ../../nondex_det/wsdoc/RestDocumentation.java src/main/java/org/versly/rest/wsdoc/impl/
mvn clean
mvn compile > detOut
echo "Number of errors detected by determinism checker:"
grep -wr "\[ERROR\] " detOut | grep "java" |  wc -l
