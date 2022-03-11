#!/bin/bash

infile=oj_bibliography_OJgroup.bib
outfile=_bibliography/oj_bibliography_OJgroup_processed.bib

# Remove comments (because jekyll-scholar can't handle them)
grep -v '^@Comment' $infile > $outfile

echo "Processed bibliography file:"
echo "  input:  $infile"
echo "  output: $outfile"