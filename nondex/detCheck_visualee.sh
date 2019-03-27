cd visualee
git submodule init
git submodule update
git checkout 410a80f
cp ../../nondex_det/visualee/pom.xml ./
cp ../../nondex_det/PluginTest.java src/test/java/de/strullerbaumann/visualee/maven/
mvn clean
mvn compile > detOut
echo "Number of errors detected by determinism checker:"
grep -wr "\[ERROR\] " detOut | grep "java" |  wc -l
