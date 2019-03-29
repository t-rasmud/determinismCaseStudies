cd commons-lang
git submodule init
git submodule update
git checkout fad946a1d
cp ../../nondex_det/commons-lang/pom.xml ./
cp ../../nondex_det/commons-lang/CompareToBuilder.java src/main/java/org/apache/commons/lang3/builder/
cp ../../nondex_det/commons-lang/EqualsBuilder.java src/main/java/org/apache/commons/lang3/builder/
cp ../../nondex_det/commons-lang/HashCodeBuilder.java src/main/java/org/apache/commons/lang3/builder/
cp ../../nondex_det/commons-lang/ReflectionToStringBuilder.java src/main/java/org/apache/commons/lang3/builder/
cp ../../nondex_det/commons-lang/FieldUtils.java src/main/java/org/apache/commons/lang3/reflect/
mvn clean
mvn compile > detOut
echo "Number of errors detected by determinism checker:"
grep -wr "\[ERROR\] " detOut | grep "java" |  wc -l
