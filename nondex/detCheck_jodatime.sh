cd joda-time
git submodule init
git submodule update
git checkout 07002501
cp ../../nondex_det/joda-time/pom.xml ./
cp ../../nondex_det/joda-time/DateTimeZone.java src/main/java/org/joda/time/
mvn clean
mvn compile > detOut
echo "Number of errors detected by determinism checker:"
grep -wr "\[ERROR\] " detOut | grep "java" |  wc -l
