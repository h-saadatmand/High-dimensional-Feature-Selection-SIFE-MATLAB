# High-dimensional-Feature-Selection-SIFE
An efficeint wrapper-based High-dimensional Feature Selection(SIFE) in MATLAB
The related article:
"Set-based integer-coded fuzzy granular evolutionary algorithms for high-dimensional feature selection".    

You can easily load your data on MATLAB as a Maxtics and run the MainSIFE.m code to select the best feature set.
Note: for repalcing another data you should only follow two steps:
%     1 : load your data in Matlab (by 'load' ,'importdata' ,'xlsread', and etc. commands)
%     2 : prepare the data as a Matrix that contains both features and labels as follows:
%       'data' is a matrix [N*(F+1)] where N is number of instances(rows), ...
%         'F' is number of Features(columns), and "1" is the last column refers to the labels;



You can cite the article with:
% H. Saadatmand, M.-R. Akbarzadeh-T,
% Set-based integer-coded fuzzy granular evolutionary algorithms for high-dimensional feature selection,
% Applied Soft Computing,
% 2023,110240,ISSN 1568-4946,
% https://doi.org/10.1016/j.asoc.2023.110240.

h.saadatmand22@yhaoo.com
