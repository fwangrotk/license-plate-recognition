function character=read_character(imagn,num_letras)
global templates_ch
comp=[ ];
for n=1:num_letras
    sem=corr2(templates_ch{1,n},imagn);
    comp=[comp sem];
end
vd=find(comp==max(comp));
%*-*-*-*-*-*-*-*-*-*-*-*-*-
if vd==1
    character='��';
elseif vd==2
    character='��';
elseif vd==3
    character='��';
elseif vd==4
    character='³';
elseif vd==5
    character='��';
elseif vd==6
    character='��';
elseif vd==7
    character='��';
elseif vd==8
    character='��';
elseif vd==9
    character='��';
elseif vd==10
    character='��';
elseif vd==11
    character='��';
elseif vd==12
    character='��';
elseif vd==13
    character='ԥ';
elseif vd==14
    character='��';
elseif vd==15
    character='��';
elseif vd==16
    character='��';
elseif vd==17
    character='��';
elseif vd==18
    character='��';
elseif vd==19
    character='��';
elseif vd==20
    character='��';
elseif vd==21
    character='��';
elseif vd==22
    character='��';
elseif vd==23
    character='��';
elseif vd==24
    character='��';
elseif vd==25
    character='��';
end
