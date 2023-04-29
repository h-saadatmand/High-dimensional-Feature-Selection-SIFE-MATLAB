 clc
 clear
 close all


% H. Saadatmand, M.-R. Akbarzadeh-T,
% Set-based integer-coded fuzzy granular evolutionary algorithms for high-dimensional feature selection,
% Applied Soft Computing,
% 2023,110240,ISSN 1568-4946,
% https://doi.org/10.1016/j.asoc.2023.110240.


%% Loading and Preparing Data
data = readmatrix('Clean476_168plus1.xls'); % A sample Data from UCI with 476 instances and 168 features in 2 classes

% Note: for repalcing another data you should only follow two steps:
%     0 : load your data in Matlab (by 'load' ,'importdata' ,'xlsread', and etc.)
%     1 : prepare the data as a Matrix that contains both features and labels as follows:
%       'data' is a matrix [N*(F+1)] where N is number of instances(rows), ...
%         'F' is number of Features(columns), and "1" is the last column refers to the labels;

Data.Feature = data(:,1:end-1); % retrive the features from inital data Martix
Data.Label = data(:,end); % retrive the labels from inital data Martix
kf = 4; % set the k for k-fold cross-validation
Data.Kf = kf;  % K for k-fold cross-validation
Data.CVI = crossvalind('kfold',numel(Data.Label),kf);
Data.nFeatures = size(Data.Feature,2);

%% Set two main pareneters of SIFE 
Params.MaxIt = 20; % Stop Condition (Maximum Iteration)
Params.nPop =  25; % population size
% Note: you should increase both MaxIt and nPop ...
% when the problem is high-dimensional
%% Feature Selection Using SIFE
[OptimalFeatureSet,Results] = FeatureSelectionUsingSIFE(Data,Params);

%% Show some Results
disp('**************** The Resulats *********************')
disp(Results)
disp('****************************************************')
disp(['The Optimal Feature Set(Indexses): { ',num2str(OptimalFeatureSet),' }']);
disp(['Accuracy = ',num2str(Results.Accuracy(end))]);
disp(['Number of Function Evaluation = ',num2str(Results.nfe(end))]);
disp(['Time Consumption [s] = ',num2str(Results.Time(end))]);
disp('****************************************************')
save('Res_Clean476_168_1',"Results");





