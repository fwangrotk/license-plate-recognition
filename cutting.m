 function remain=cutting(d)
[m,n]=size(d);
top=1;bottom=m;left=1;right=n;   
while sum(d(top,:))==0 && top<=m
    top=top+1;
end
while sum(d(bottom,:))==0 && bottom>=1
    bottom=bottom-1;
end
while sum(d(:,left))==0 && left<=n
    left=left+1;
end
while sum(d(:,right))==0 && right>=1
    right=right-1;
end
width=right-left;
height=bottom-top;
remain=imcrop(d,[left top width height]);