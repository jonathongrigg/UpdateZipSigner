#!/bin/sh

# Copyright Jonathon Grigg <http://www.jonathongrigg.com> April 2011
# Contact me at jonathongrigg@gmail.com if needed
# 
# Source code licensed under the Open Software License version 3.0
# 	http://www.opensource.org/licenses/osl-3.0

# Signs an an update.zip file using test keys and exports as signed-*original*.zip

if [ "$1" = "" ]
    echo "Please include the filename of the update.zip file you want signed when running the script, eg. ./signzip.sh infin1ty-1.0.0.zip"
    exit 1
else
    echo "Preparing to sign $1"
fi

inputzip=$1
outputzip=signed-$1

java -Xmx512m -jar signapk.jar -w testkey.x509.pem testkey.pk8 $inputzip $outputzip

echo "Successfully signed $1, the output file is called $outputzip"
exit 0
