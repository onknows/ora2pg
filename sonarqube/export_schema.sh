#!/bin/sh
#-------------------------------------------------------------------------------
#
# Generated by Ora2Pg, the Oracle database Schema converter, version 20.0
#
#-------------------------------------------------------------------------------
EXPORT_TYPE="TABLE PACKAGE VIEW GRANT SEQUENCE TRIGGER FUNCTION PROCEDURE TABLESPACE PARTITION TYPE MVIEW DBLINK SYNONYM DIRECTORY"
SOURCE_TYPE="PACKAGE VIEW TRIGGER FUNCTION PROCEDURE PARTITION TYPE MVIEW"
namespace="."

ora2pg -t SHOW_TABLE -c $namespace/config/ora2pg.conf > $namespace/reports/tables.txt
ora2pg -t SHOW_COLUMN -c $namespace/config/ora2pg.conf > $namespace/reports/columns.txt
ora2pg -t SHOW_REPORT -c $namespace/config/ora2pg.conf --dump_as_html --estimate_cost > $namespace/reports/report.html

for etype in $(echo $EXPORT_TYPE | tr " " "\n")
do
        ltype=`echo $etype | tr '[:upper:]' '[:lower:]'`
        ltype=`echo $ltype | sed 's/y$/ie/'`
        echo "Running: ora2pg -p -t $etype -o $ltype.sql -b $namespace/schema/${ltype}s -c $namespace/config/ora2pg.conf"
        ora2pg -p -t $etype -o $ltype.sql -b $namespace/schema/${ltype}s -c $namespace/config/ora2pg.conf
	ret=`grep "Nothing found" $namespace/schema/${ltype}s/$ltype.sql 2> /dev/null`
	if [ ! -z "$ret" ]; then
		rm $namespace/schema/${ltype}s/$ltype.sql
	fi
done

for etype in $(echo $SOURCE_TYPE | tr " " "\n")
do
        ltype=`echo $etype | tr '[:upper:]' '[:lower:]'`
        ltype=`echo $ltype | sed 's/y$/ie/'`
        echo "Running: ora2pg -t $etype -o $ltype.sql -b $namespace/sources/${ltype}s -c $namespace/config/ora2pg.conf"
        ora2pg -t $etype -o $ltype.sql -b $namespace/sources/${ltype}s -c $namespace/config/ora2pg.conf
	ret=`grep "Nothing found" $namespace/sources/${ltype}s/$ltype.sql 2> /dev/null`
	if [ ! -z "$ret" ]; then
		rm $namespace/sources/${ltype}s/$ltype.sql
	fi
done

echo
echo
echo "To extract data use the following command:"
echo
echo "ora2pg -t COPY -o data.sql -b $namespace/data -c $namespace/config/ora2pg.conf"
echo

exit 0
