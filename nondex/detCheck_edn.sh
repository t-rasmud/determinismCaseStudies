cd edn-java
git submodule init
git submodule update
git checkout c1d891d
cp ../../nondex_det/edn-java/pom.xml ./
cp ../../nondex_det/edn-java/src/main/java/us/bpsm/edn/printer/Printers.java src/main/java/us/bpsm/edn/printer/
mvn clean
mvn compile > detOut
echo "Number of errors detected by determinism checker:"
grep -wr "\[ERROR\] " detOut | grep "java" |  wc -l
