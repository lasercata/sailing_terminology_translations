#!/usr/bin/env bash

# To get all the terms and their translations:
# grep Sailing_voc.tex -v -e Header -e subsection -e "     % {{{2" | grep -e {{{2 -e {{{3 -A2

nb_terms=$(grep Sailing_voc.tex -v -e Header -e subsection -e "     % {{{2" | grep -e {{{2 -e {{{3 | wc -l)

echo Number of terms: $nb_terms
