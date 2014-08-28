mvn install:install-file \
-DgroupId=com.felipecsl \
-DartifactId=asymmetricgridview \
-Dversion=$1 \
-DgeneratePom=true \
-Dpackaging=aar \
-Dfile=library/build/outputs/aar/library.aar \
-DlocalRepositoryPath=/Users/felipecsl/Data/Projects/m2repository/

mv /Users/felipecsl/Data/Projects/m2repository/com/felipecsl/asymmetricgridview/$1/maven-metadata-local.xml \
/Users/felipecsl/Data/Projects/m2repository/com/felipecsl/asymmetricgridview/$1/maven-metadata.xml

mv /Users/felipecsl/Data/Projects/m2repository/com/felipecsl/asymmetricgridview/maven-metadata-local.xml \
/Users/felipecsl/Data/Projects/m2repository/com/felipecsl/asymmetricgridview/maven-metadata.xml

cd /Users/felipecsl/Data/Projects/m2repository/

git add .
git ci -am 'Updates AsymmetricGridView to $1'
git push felipecsl master