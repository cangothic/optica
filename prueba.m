clc
close all
clear all
%f=figure;
% set(f,'resize','off');
for i=0:50
imagesc(optica(1024,1024,8,i)),colormap gray
set(gca,'Ytick',zeros(0,1),'Xtick',zeros(1,0))
pause(1)
end