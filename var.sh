rf-train pdbbind-2007-refined-core-yx${1}i.csv pdbbind-2007-refined-core-x${1}.rf
rf-test pdbbind-2007-refined-core-x${1}.rf pdbbind-2007-refined-core-yx${1}i.csv | tail -n +2 | cut -d, -f2,3 | rf-stat
rf-test pdbbind-2007-refined-core-x${1}.rf pdbbind-2007-core-yx${1}i.csv | tail -n +2 | cut -d, -f2,3 | rf-stat
