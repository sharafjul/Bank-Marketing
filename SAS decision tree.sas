proc import
out = bank_marketing
datafile = "bank.csv"
dbms = csv replace;
getnames = yes;

proc print data=bank_marketing (obs=10);
title "Bank Marketing";

ods graphics on;

proc hpsplit data=bank_marketing;
	class y age job marital education default balance housing loan contact day month duration campaign pdays previous poutcome;
	model y = age job marital education default balance housing loan contact day month duration campaign pdays previous poutcome;
	grow entropy;
	prune costcomplexity;
run;
