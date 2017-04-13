# CSE576
Knowledge representation project :
This repo includes codes to generate any number(k) of Mutually Orthogonal Latin Squares(MOLS) given an order n. 

## How to execute?
1. use python file to generate ASP code for generating MOLS of a particular
2. run "python MOLS_file_generator.py 5" to generate a ASP code that generates MOLS of order 5. I've created some sample ASP files for reference
3. run ASP code using "clingo MOLS_5.pl -c k=4" (k is the number of MOLS you want to generating if there exists one)
4. you can download clingo 5.1 from github


Now you can add an extra atoms (truth values) using the generated file from python script MOLS_data_generator.py
1. run "python MOLS_data_generator.py 5" to generate data file.
2. run ASP code using "clingo MOLS_5.pl data_5.pl -c k=4" (k is the number of MOLS you want to generating if there exists one)