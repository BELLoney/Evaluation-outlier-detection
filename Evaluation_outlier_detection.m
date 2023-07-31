%Evaluation outlier detection by ROC and AUC
clear all
clc

load lymphography.mat

out_scores=FRGOD(trandata(:,1:end-1),1);

labels=trandata(:,end);
[FPR, TPR, ~, AUC] = perfcurve(labels, out_scores, 1);%
disp(['AUC=',num2str(AUC)])

figure;
plot(FPR, TPR, '-r');
xlabel('False positive rate')
ylabel('True positive rate')
