function [char,remain]=segmentation(e)
[~,n]=size(e);
left=1;right=n;
while sum(e(:,left))~=0 && left<=n-1
    left=left+1;
end
char=e(:,1:left-1);
remain=e(:,left:right);