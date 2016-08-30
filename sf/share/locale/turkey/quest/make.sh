#!/usr/local/bin/bash

LIST_FILE='maxmi_list'

if [ -r $LIST_FILE ]; then

	rm -rdf object
	mkdir object

	while read line;
		do
			./qc $line
		done < $LIST_FILE
else
	echo $LIST_FILE' is missing'
fi


