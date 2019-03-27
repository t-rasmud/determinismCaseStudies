cd geoserver-manager
git submodule init
git submodule update
git checkout a4268dd
cp ../../nondex_det/geoserver-manager/pom.xml ./
cp ../../nondex_det/geoserver-manager/GSLayerEncoder21.java src/main/java/it/geosolutions/geoserver/rest/encoder/
mvn clean
mvn compile > detOut
echo "Number of errors detected by determinism checker:"
grep -wr "\[ERROR\] " detOut | grep "java" |  wc -l
