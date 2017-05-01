%CREATE TEMPLATES
%Chinese characters
ch1=imread('ChineseCharacters\1.bmp');ch2=imread('ChineseCharacters\2.bmp');
ch3=imread('ChineseCharacters\3.bmp');ch4=imread('ChineseCharacters\4.bmp');
ch5=imread('ChineseCharacters\5.bmp');ch6=imread('ChineseCharacters\6.bmp');
ch7=imread('ChineseCharacters\7.bmp');ch8=imread('ChineseCharacters\8.bmp');
ch9=imread('ChineseCharacters\9.bmp');ch10=imread('ChineseCharacters\10.bmp');
ch11=imread('ChineseCharacters\11.bmp');ch12=imread('ChineseCharacters\12.bmp');
ch13=imread('ChineseCharacters\13.bmp');ch14=imread('ChineseCharacters\14.bmp');
ch15=imread('ChineseCharacters\15.bmp');ch16=imread('ChineseCharacters\16.bmp');
ch17=imread('ChineseCharacters\17.bmp');ch18=imread('ChineseCharacters\18.bmp');
ch19=imread('ChineseCharacters\19.bmp');ch20=imread('ChineseCharacters\20.bmp');
ch21=imread('ChineseCharacters\21.bmp');ch22=imread('ChineseCharacters\22.bmp');
ch23=imread('ChineseCharacters\23.bmp');ch24=imread('ChineseCharacters\24.bmp');
ch25=imread('ChineseCharacters\25.bmp');
%*-*-*-*-*-*-*-*-*-*-*-
character=[ch1 ch2 ch3 ch4 ch5 ch6 ch7 ch8 ch9 ch10 ch11 ch12 ch13 ch14 ch15...
    ch16 ch17 ch18 ch19 ch20 ch21 ch22 ch23 ch24 ch25];
templates_ch=mat2cell(character,32,[16 16 16 16 16 16 16 ...
    16 16 16 16 16 16 16 ...
    16 16 16 16 16 16 16 ...
    16 16 16 16]);
save ('templates_ch','templates_ch')
%clear all
