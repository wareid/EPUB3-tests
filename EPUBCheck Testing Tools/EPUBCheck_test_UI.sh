#!/bin/sh
# EPUBCheck Testing Script
# Created 03/22/2019 by Wendy Reid, Rakuten Kobo Inc.

echo "Welcome to the EPUBCheck Tester! Follow the prompts to continue"
echo "Please enter the folder location of the test EPUBs (i.e. ~/Home/test-files)"
read loc1
echo "Please enter the folder location of EPUBCheck (i.e. ~/Home/epubcheck)"
read loc2
echo "Checking files against EPUBCheck"
eval cd "$loc1"
for i in `ls *.epub`
do
  echo "Running files..."
  eval java -jar "$loc2/epubcheck.jar" $i >>test_results.txt 2>&1
done
echo "Test complete!"
