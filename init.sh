#!/bin/bash
cd `dirname $0`
files=("./pom.xml" "./module.ncf")

init(){
    os=`uname`
    if [ "$os" == "Darwin" ];
    then
        eval "sed -i '' 's/nuls-module-template-java/$2/' $1"
    else
        eval "sed -i 's/nuls-module-template-java/$2/' $1"
    fi
}

for file in ${files[@]}
do
    init $file $1
done



