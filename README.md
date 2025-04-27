# complementarity
Script for data analysis accompanying the manuscript "Uncovering complementary information sharing in spider monkey collective foraging using higher-order spatial networks by Gabriel Ramos-Fernandez, Ross S. Walker, Matthew J. Silk, Denis Boyer and Sandra E. Smith Aguilar. https://doi.org/

The script extracts individual core range polygons and their intersections from shapefiles and calculates the area and the extent of intersection out of the union for all sets of individuals that overlap in each study season (dry and wet seasons from 2012 to 2017). It outputs the values of w, area and composition of the sets for further analysis using simplicial complexes. It also produces the first figures in the manuscript.

The data includes maximum xy ranges for the maps of the core ranges, and for each season and year combination: the individual core ranges and their intersections, the index of fruit abundance, the filtration complementarity index, which serve as input for the R code, and the w value, area and composition each simplex, which serves as the input for the Python code. 

Uncompress the data.zip file before running the scripts and place it in the same direectory as the R or Python files.

If you use this script for academic research, please cite the paper mentioned above.
