# Generate and explore synthetic Telecom Call Detail Records (CDR)
(C) copyright 2019 Martin Lurie, All rights reserved - sample code not supported. 

go.sh will run the data generator and create tables in Cloudera using Impala

Sample queries show finding outliers with SQL.  This is limited as the number of 
features increases.

The KMeans analysis illustrates finding clusters with a data file using three Features.  

Todo: add the distance calculation and do a sorted rank of obseved data points with 
the largest distance from the assigned cluster.
