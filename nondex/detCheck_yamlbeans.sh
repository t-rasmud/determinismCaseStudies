cd yamlbeans
git submodule init
git submodule update
git checkout 2ccfbd9
cp ../../nondex_det/yamlbeans/pom.xml ./
cp ../../nondex_det/yamlbeans/YamlWriter.java src/com/esotericsoftware/yamlbeans/
mvn clean
mvn compile > detOut
echo "Number of errors detected by determinism checker:"
grep -wr "\[ERROR\] " detOut | grep "java" |  wc -l
