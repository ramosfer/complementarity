# complementarity
Script for data analysis accompanying the manuscript "Uncovering complementary information sharing in spider monkey collective foraging using higher-order spatial networks by Gabriel Ramos-Fernandez, Ross S. Walker, Matthew J. Silk, Denis Boyer and Sandra E. Smith Aguilar.

The R script, written by Gabriel Ramos-Fernandez, extracts individual core range polygons and their intersections from shapefiles and calculates the area and the extent of intersection out of the union for all sets of individuals that overlap in each study season (dry and wet seasons from 2012 to 2017). It outputs the values of w, area and composition of the sets for further analysis using simplicial complexes. It also produces the first figures in the manuscript.

The Python script, written as a Jupyter interactive notebook by Ross S. Walker, uses the computed values of w and their corresponding sets of individuals to construct the filtered simplicial complexes using the methodology outlined in the methods section, using the Gudhi package. This same package allows us to compute the persistent homology of these simplicial complexes and produce the barcode visualisations from the paper. The analysis for this part is set up so the analysis is conducted for various values of n_max (the maximum simplex size, as defined in the text). This file also computes the Maximal Simplicial Degree Centrality of simplices across all seasons - the measure defined in Serrano and Gómez (2020), and analysing it with respect to data on the sex, age and immigration status of the simplices. We also compute here the filtration complementarity index, and compute the values for each season.

The data includes maximum xy ranges for the maps of the core ranges, and for each season and year combination: the individual core ranges and their intersections, the index of fruit abundance, the filtration complementarity index, which serve as input for the R code, and the w value, area and composition each simplex, as well as the composition in terms of age, sex and immigration status of each simplex, which serve as the input for the Python code. 

Uncompress the data.zip file before running the scripts and place it in the same directory as the R or Python files.

If you use this script for academic research, please cite 

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.15292113.svg)](https://doi.org/10.5281/zenodo.15292113)
