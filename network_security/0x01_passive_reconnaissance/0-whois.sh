#!/bin/bash
whois $1 | awk -F': *' '/^(Registrant|Admin|Tech) (Name|Organization|Street|City|State\/Province|Postal Code|Country|Phone|Phone Ext|Fax|Fax Ext|Email)/{k=$1;v=$2;if(k~/(Phone|Fax) Ext$/){k=k ":"}if(k~/Street$/){v=v " "}gsub(" ","$",k);gsub(" ","$",v);print k "," v}' > $1.csv
