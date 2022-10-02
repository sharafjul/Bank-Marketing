proc import
out=bank_csv  
datafile ="C:\Users\isharafutdinova\Downloads\bank.csv" 
dbms=csv replace;  
getnames=yes;  

proc print data=bank_csv (obs=10) ; 
title "Banking Marketing"
    

proc means data=bank_csv;  
run;

ods graphics on;

proc hpsplit data=bank_csv; 
	class y age job marital education default balance housing loan contact day month duration campaign pdays previous poutcome;    
	model y = age job marital education default balance housing loan contact day month duration campaign pdays previous poutcome;  
	grow entropy;
	prune costcomplexity;  
run;
