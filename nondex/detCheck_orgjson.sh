cd org-json
git submodule init
git submodule update
git checkout 9be3701
cp ../../nondex_det/org-json/pom.xml ./
cp ../../nondex_det/org-json/JSONObject.java src/main/java/org/json/
mvn clean
mvn compile > detOut
echo "Number of errors detected by determinism checker:"
grep -wr "\[ERROR\] " detOut | grep "java" |  wc -l
