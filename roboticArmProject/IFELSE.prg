1 Servo On
2 Ovrd 50
3 Accel 25,30
4 M_Out(160)=1 'ürün bantta gözüksün
5 M_Out(161)=0 'ürün ilk rafta gözükmesin
6 M_Out(162)=0 'ürün kolide gözükmesin
7 M_Out(163)=0 'ürün üst rafta gözükmesün
8 M_Out(155)=0 'gripper bos
9 Mov Phome
10 Wait M_In(8)=1 'start butonuna basýlmasýný bekle
11 Mov Pkontrol
12 Dly 3
13 If M_In(15)=1 Then 'ürün basarili Ise
14 Mov Phome
15 Mov Palmageri
16 Dly 0.2
17 Mvs Palma
18 Dly 0.02
19 M_Out(155)=1 'gripper dolu
20 M_Out(160)=0 'ürün bantta gözükmesin
21 Mov Phome
22 Dly 0.2
23 Mov Pbirakgeri
24 Dly 0.2
25 Mvs Pbirak
26 M_Out(155)=0 'gripper bos 
27 M_Out(161)=1 'ürün ilk rafta gözüksün
28 Mov Pbirakgeri
29 Mov Phome
30 M_Out(160)=1 'ürün bantta gözüksün
31 Mov Palmageri
32 Dly 0.2
33 Mvs Palma
34 Dly 0.2
35 M_Out(155)=1 'gripper dolu
36 M_Out(160)=0 'ürün bantta gözükmesin
37 Mov Phome
38 Dly 0.1
39 Mov Pyukarigeri
40 Dly 0.2
41 Mvs Pyukaribirak
42 M_Out(155)=0 'gripper bos 
43 M_Out(163)=1 'ürün üst rafta gözüksün
44 Mov Pbirakgeri
45 Mov Phome
46 EndIf
47 If M_In(15)=0 Then 'ürün basarisiz Ise
48 M_Out(160)=1 'ürün bantta gözüksün
49 Mov Phome
50 Mov Palmageri
51 Dly 0.2
52 Mvs Palma
53 Dly 0.2
54 M_Out(155)=1 'gripper dolu
55 M_Out(160)=0 'ürün bantta gözükmesin
56 Mov Phome
57 Dly 0.1
58 Mov Pkoliustu
59 Dly 0.1
60 Mvs Pkoliici
61 Dly 0.1
62 M_Out(155)=0 'gripper bos 
63 M_Out(162)=1 'ürün kolide gözüksün
64 Mvs Pkoliustu
65 Dly 0.2
66 Mov Phome
67 EndIf
68 End
Phome=(+267.11,+0.00,+651.29,+0.00,+0.00,+90.00)(6,0)
Pkontrol=(+392.54,-8.43,+535.26,-180.00,+0.00,+90.00)(7,0)
Palmageri=(+274.49,+5.13,+326.56,+90.00,+0.00,+90.00)(6,0)
Palma=(+296.96,+5.13,+326.56,+90.00,+0.00,+90.00)(6,0)
Pbirakgeri=(+27.11,+292.18,+365.18,+90.00,+0.00,+173.77)(6,0)
Pbirak=(+48.05,+558.72,+365.18,+90.00,+0.00,+173.77)(6,0)
Pyukarigeri=(+73.03,+323.95,+616.44,+90.00,+0.00,-180.00)(6,1048576)
Pyukaribirak=(+92.13,+441.06,+621.59,+89.78,+0.05,+179.10)(6,1048576)
Pkoliustu=(+11.10,-382.67,+393.97,-180.00,+0.00,+0.00)(7,0)
Pkoliici=(-14.26,-446.05,+257.40,-180.00,+0.00,+0.00)(7,0)
