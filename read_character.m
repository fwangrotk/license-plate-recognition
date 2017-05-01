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
    character='¾©';
elseif vd==2
    character='ÉÂ';
elseif vd==3
    character='Õã';
elseif vd==4
    character='Â³';
elseif vd==5
    character='½ò';
elseif vd==6
    character='ÔÁ';
elseif vd==7
    character='Íî';
elseif vd==8
    character='ÁÉ';
elseif vd==9
    character='´¨';
elseif vd==10
    character='¸Ó';
elseif vd==11
    character='Äş';
elseif vd==12
    character='Çí';
elseif vd==13
    character='Ô¥';
elseif vd==14
    character='¹ó';
elseif vd==15
    character='ÃÉ';
elseif vd==16
    character='¶õ';
elseif vd==17
    character='ËÕ';
elseif vd==18
    character='»¦';
elseif vd==19
    character='¼½';
elseif vd==20
    character='ºÚ';
elseif vd==21
    character='Ãö';
elseif vd==22
    character='¼ª';
elseif vd==23
    character='Ïæ';
elseif vd==24
    character='¹ğ';
elseif vd==25
    character='½ú';
end
