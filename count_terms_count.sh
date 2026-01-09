#!/usr/bin/env bash

# To get all the terms and their translations:
# grep Sailing_voc.tex -v -e Header -e subsection -e "     % {{{2" | grep -e {{{2 -e {{{3 -A2

nb_terms=$(grep Sailing_voc.tex -v -e Header -e subsection -e "     % {{{2" | grep -e {{{2 -e {{{3 | wc -l)

nb_not_translated=$(grep Sailing_voc.tex -v -e Header -e subsection -e "     % {{{2" | grep -e {{{2 -e {{{3 -A2 | grep -v -e "& " -e "--" -e "{{{" | wc -l)

echo "Number of terms: $nb_terms"

echo "Number of non translated slots: $nb_not_translated"
