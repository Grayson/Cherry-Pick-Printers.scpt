FasdUAS 1.101.10   ��   ��    k             j     �� �� (0 pathtopackagemaker pathToPackageMaker  m        � 	 	 > / D e v e l o p e r / u s r / b i n / p a c k a g e m a k e r   
  
 l     ��������  ��  ��        i        I     ������
�� .aevtoappnull  �   � ****��  ��    k     y       r     	    n         2    ��
�� 
cpar  l     ����  I    �� ��
�� .sysoexecTEXT���     TEXT  m        �     l s   / e t c / c u p s / p p d��  ��  ��    o      ���� 0 ppds        r   
     I  
 ��   
�� .gtqpchltns    @   @ ns    o   
 ���� 0 ppds     �� !��
�� 
mlsl ! m    ��
�� boovtrue��    o      ���� 0 r     " # " Z   # $ %���� $ =    & ' & o    ���� 0 r   ' m    ��
�� boovfals % I   ������
�� .aevtquitnull��� ��� null��  ��  ��  ��   #  ( ) ( l  $ $��������  ��  ��   )  * + * l  $ $�� , -��   , $  Make sure the old one is gone    - � . . <   M a k e   s u r e   t h e   o l d   o n e   i s   g o n e +  / 0 / Q   $ 7 1 2�� 1 I  ' .�� 3 4
�� .sysoexecTEXT���     TEXT 3 m   ' ( 5 5 � 6 6 > / b i n / r m   - r   / t m p / p r i n t e r - i n s t a l l 4 �� 7��
�� 
badm 7 m   ) *��
�� boovtrue��   2 R      ������
�� .ascrerr ****      � ****��  ��  ��   0  8 9 8 l  8 8��������  ��  ��   9  : ; : l   8 8�� < =��   <   Create files for ppds     = � > > .   C r e a t e   f i l e s   f o r   p p d s   ;  ? @ ? X   8 g A�� B A k   H b C C  D E D l  H H�� F G��   F "  Fetch the printer.conf info    G � H H 8   F e t c h   t h e   p r i n t e r . c o n f   i n f o E  I J I r   H R K L K n  H N M N M I   I N�� O���� :0 getconfigurationforppdnamed getConfigurationForPPDNamed O  P�� P o   I J���� 0 ppd  ��  ��   N  f   H I L o      ���� 0 conf   J  Q R Q l  S S��������  ��  ��   R  S T S l  S S�� U V��   U * $ Write out the current configuration    V � W W H   W r i t e   o u t   t h e   c u r r e n t   c o n f i g u r a t i o n T  X Y X n  S [ Z [ Z I   T [�� \���� 20 writeconfigurationtotmp writeConfigurationToTmp \  ]�� ] o   T W���� 0 conf  ��  ��   [  f   S T Y  ^ _ ^ l  \ \��������  ��  ��   _  ` a ` l  \ \�� b c��   b   Copy the ppd    c � d d    C o p y   t h e   p p d a  e�� e n  \ b f g f I   ] b�� h���� 0 copyppdtotmp copyPPDToTmp h  i�� i o   ] ^���� 0 ppd  ��  ��   g  f   \ ]��  �� 0 ppd   B o   ; <���� 0 r   @  j k j l  h h��������  ��  ��   k  l m l l   h h�� n o��   n   Create installer     o � p p $   C r e a t e   i n s t a l l e r   m  q r q l  h h�� s t��   s   Write out the scripts    t � u u ,   W r i t e   o u t   t h e   s c r i p t s r  v w v n  h m x y x I   i m��������  0 writepreflight writePreflight��  ��   y  f   h i w  z { z n  n s | } | I   o s�������� "0 writepostflight writePostflight��  ��   }  f   n o {  ~  ~ l  t t��������  ��  ��     � � � l  t t�� � ���   � ' ! Create package with PackageMaker    � � � � B   C r e a t e   p a c k a g e   w i t h   P a c k a g e M a k e r �  ��� � n  t y � � � I   u y�������� 0 createpackage createPackage��  ��   �  f   t u��     � � � l     ��������  ��  ��   �  � � � i    
 � � � I      �� ����� :0 getconfigurationforppdnamed getConfigurationForPPDNamed �  ��� � o      ���� 0 ppd  ��  ��   � L      � � I    �� � �
�� .sysoexecTEXT���     TEXT � b      � � � b      � � � m      � � � � � � / u s r / b i n / p y t h o n   < < E N D 
 l i n e s   =   f i l e ( ' / e t c / c u p s / p r i n t e r s . c o n f ' ,   ' r ' ) . r e a d l i n e s ( ) 
 s t a r t s a v i n g   =   F a l s e 
 p r i n t e r   =   ' � o    ���� 0 ppd   � m     � � � � �� ' . s p l i t ( ' . ' ) [ 0 ] 
 p c o n f   =   [ ] 
 f o r   l i n e   i n   l i n e s : 
 	 i f   s t a r t s a v i n g : 
 	 	 p c o n f . a p p e n d ( l i n e ) 
 	 	 i f   ' < / P r i n t e r > '   i n   l i n e : 
 	 	 	 b r e a k 
 	 e l s e : 
 	 	 i f   p r i n t e r   i n   l i n e : 
 	 	 	 s t a r t s a v i n g   =   T r u e 
 	 	 	 p c o n f . a p p e n d ( l i n e ) 
 p r i n t   ' ' . j o i n ( p c o n f ) 
 
 E N D � �� ���
�� 
badm � m    ��
�� boovtrue��   �  � � � l     ��������  ��  ��   �  � � � i     � � � I      �� ����� 20 writeconfigurationtotmp writeConfigurationToTmp �  ��� � o      ���� 0 conf  ��  ��   � k     ! � �  � � � I    �� ���
�� .sysoexecTEXT���     TEXT � m      � � � � � V / b i n / m k d i r   - p   / t m p / p r i n t e r - i n s t a l l / R O O T / t m p��   �  � � � l   ��������  ��  ��   �  � � � r     � � � I   �� � �
�� .rdwropenshor       file � m     � � � � � T / t m p / p r i n t e r - i n s t a l l / R O O T / t m p / p r i n t e r . c o n f � �� ���
�� 
perm � m    	��
�� boovtrue��   � o      ���� 0 f   �  � � � I   �� � �
�� .rdwrwritnull���     **** � o    ���� 0 conf   � �� � �
�� 
refn � o    ���� 0 f   � �� � �
�� 
as   � m    ��
�� 
TEXT � �� ���
�� 
wrat � m    ��
�� rdwreof ��   �  ��� � I   !�� ���
�� .rdwrclosnull���     **** � o    �� 0 f  ��  ��   �  � � � l     �~�}�|�~  �}  �|   �  � � � i     � � � I      �{ ��z�{ 0 copyppdtotmp copyPPDToTmp �  ��y � o      �x�x 0 ppd  �y  �z   � k      � �  � � � I    �w ��v
�w .sysoexecTEXT���     TEXT � m      � � � � � h / b i n / m k d i r   - p   / t m p / p r i n t e r - i n s t a l l / R O O T / e t c / c u p s / p p d�v   �  ��u � I   �t � �
�t .sysoexecTEXT���     TEXT � b     � � � b    	 � � � m     � � � � � , / b i n / c p   / e t c / c u p s / p p d / � o    �s�s 0 ppd   � m   	 
 � � � � � N   / t m p / p r i n t e r - i n s t a l l / R O O T / e t c / c u p s / p p d � �r ��q
�r 
badm � m    �p
�p boovtrue�q  �u   �  � � � l     �o�n�m�o  �n  �m   �  � � � i     � � � I      �l�k�j�l  0 writepreflight writePreflight�k  �j   � k     % � �  � � � r      � � � m      � � � � � D # ! / u s r / b i n / e n v   b a s h 
 k i l l a l l   c u p s d 
 � o      �i�i 0 	preflight   �  � � � I   	�h ��g
�h .sysoexecTEXT���     TEXT � m     � � � � � T / b i n / m k d i r   - p   / t m p / p r i n t e r - i n s t a l l / S c r i p t s�g   �  � � � r   
  � � � I  
 �f � �
�f .rdwropenshor       file � m   
  � � � � � L / t m p / p r i n t e r - i n s t a l l / S c r i p t s / p r e f l i g h t � �e ��d
�e 
perm � m    �c
�c boovtrue�d   � o      �b�b 0 f   �  � � � I   �a � �
�a .rdwrwritnull���     **** � o    �`�` 0 	preflight   � �_ � �
�_ 
refn � o    �^�^ 0 f   � �] � �
�] 
as   � m    �\
�\ 
TEXT � �[ ��Z
�[ 
wrat � m    �Y
�Y rdwreof �Z   �  ��X � I    %�W ��V
�W .rdwrclosnull���     **** � o     !�U�U 0 f  �V  �X   �    l     �T�S�R�T  �S  �R    i     I      �Q�P�O�Q "0 writepostflight writePostflight�P  �O   k     %  r     	
	 m      � � # ! / u s r / b i n / e n v   b a s h 
 c a t   / t m p / p r i n t e r . c o n f   > >   / e t c / c u p s / p r i n t e r s . c o n f 
 r m   / t m p / p r i n t e r . c o n f   #   C l e a n u p 

 o      �N�N 0 
postflight    I   	�M�L
�M .sysoexecTEXT���     TEXT m     � T / b i n / m k d i r   - p   / t m p / p r i n t e r - i n s t a l l / S c r i p t s�L    r   
  I  
 �K
�K .rdwropenshor       file m   
  � N / t m p / p r i n t e r - i n s t a l l / S c r i p t s / p o s t f l i g h t �J�I
�J 
perm m    �H
�H boovtrue�I   o      �G�G 0 f    I   �F
�F .rdwrwritnull���     **** o    �E�E 0 
postflight   �D 
�D 
refn o    �C�C 0 f    �B!"
�B 
as  ! m    �A
�A 
TEXT" �@#�?
�@ 
wrat# m    �>
�> rdwreof �?   $�=$ I    %�<%�;
�< .rdwrclosnull���     ****% o     !�:�: 0 f  �;  �=   &'& l     �9�8�7�9  �8  �7  ' (�6( i    )*) I      �5�4�3�5 0 createpackage createPackage�4  �3  * k     r++ ,-, r     ./. n     010 1    �2
�2 
ttxt1 l    2�1�02 I    �/34
�/ .sysodlogaskr        TEXT3 m     55 �66 ( E n t e r   p a c k a g e   t i t l e :4 �.78
�. 
appr7 m    99 �:: * P r i n t e r   p a c k a g e   m a k e r8 �-;<
�- 
dtxt; m    == �>>  R O O T< �,?�+
�, 
disp? m    �*
�* stic   �+  �1  �0  / o      �)�) 	0 title  - @A@ r    BCB n    DED 1    �(
�( 
ttxtE l   F�'�&F I   �%GH
�% .sysodlogaskr        TEXTG m    II �JJ   E n t e r   b u n d l e   i d :H �$KL
�$ 
apprK m    MM �NN * P r i n t e r   p a c k a g e   m a k e rL �#OP
�# 
dtxtO m    QQ �RR X c o m . f r o m c o n c e n t r a t e s o f t w a r e . p r i n t e r p a c k a g e . xP �"S�!
�" 
dispS m    � 
�  stic   �!  �'  �&  C o      �� 0 bundleid  A TUT r     /VWV n     -XYX 1   + -�
� 
ttxtY l    +Z��Z I    +�[\
� .sysodlogaskr        TEXT[ m     !]] �^^ . E n t e r   p a c k a g e   f i l e n a m e :\ �_`
� 
appr_ m   " #aa �bb * P r i n t e r   p a c k a g e   m a k e r` �cd
� 
dtxtc m   $ %ee �ff  P r i n t e r . p k gd �g�
� 
dispg m   & '�
� stic   �  �  �  W o      �� 0 packagename  U hih Z   0 Jjk��j E   0 9lml J   0 5nn opo o   0 1�� 	0 title  p qrq o   1 2�� 0 bundleid  r s�s o   2 3�� 0 packagename  �  m m   5 8tt �uu  k k   < Fvv wxw I  < C�y�
� .sysodlogaskr        TEXTy m   < ?zz �{{ R E R R O R :   O n e   o f   t h e   i t e m s   p a s s e d   w a s   e m p t y .�  x |�| L   D F��  �  �  �  i }~} l  K K�
�	��
  �	  �  ~ � I  K r���
� .sysoexecTEXT���     TEXT� b   K n��� b   K h��� b   K d��� b   K ^��� b   K Z��� b   K T��� o   K P�� (0 pathtopackagemaker pathToPackageMaker� m   P S�� ��� P   - - r o o t   / t m p / p r i n t e r - i n s t a l l / R O O T /   - - i d  � n   T Y��� 1   U Y�
� 
strq� o   T U�� 0 bundleid  � m   Z ]�� ��� p   - - s c r i p t s   / t m p / p r i n t e r - i n s t a l l / S c r i p t s   - - o u t   ~ / D e s k t o p /� n   ^ c��� 1   _ c�
� 
strq� o   ^ _� �  0 packagename  � m   d g�� ���    - - t i t l e  � n   h m��� 1   i m��
�� 
strq� o   h i���� 	0 title  �  �  �6       ��� ����������������������  � ���������������������������������� (0 pathtopackagemaker pathToPackageMaker
�� .aevtoappnull  �   � ****�� :0 getconfigurationforppdnamed getConfigurationForPPDNamed�� 20 writeconfigurationtotmp writeConfigurationToTmp�� 0 copyppdtotmp copyPPDToTmp��  0 writepreflight writePreflight�� "0 writepostflight writePostflight�� 0 createpackage createPackage�� 0 ppds  �� 0 r  �� 0 conf  ��  ��  ��  ��  ��  � �� ��������
�� .aevtoappnull  �   � ****��  ��  � ���� 0 ppd  �  �������������� 5��������������������������
�� .sysoexecTEXT���     TEXT
�� 
cpar�� 0 ppds  
�� 
mlsl
�� .gtqpchltns    @   @ ns  �� 0 r  
�� .aevtquitnull��� ��� null
�� 
badm��  ��  
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� :0 getconfigurationforppdnamed getConfigurationForPPDNamed�� 0 conf  �� 20 writeconfigurationtotmp writeConfigurationToTmp�� 0 copyppdtotmp copyPPDToTmp��  0 writepreflight writePreflight�� "0 writepostflight writePostflight�� 0 createpackage createPackage�� z�j �-E�O��el E�O�f  
*j Y hO ��el W X 
 hO .�[��l kh  )�k+ E` O)_ k+ O)�k+ [OY��O)j+ O)j+ O)j+ � �� ����������� :0 getconfigurationforppdnamed getConfigurationForPPDNamed�� ����� �  ���� 0 ppd  ��  � ���� 0 ppd  �  � �����
�� 
badm
�� .sysoexecTEXT���     TEXT�� �%�%�el � �� ����������� 20 writeconfigurationtotmp writeConfigurationToTmp�� ����� �  ���� 0 conf  ��  � ������ 0 conf  �� 0 f  �  ��� ���������������������
�� .sysoexecTEXT���     TEXT
�� 
perm
�� .rdwropenshor       file
�� 
refn
�� 
as  
�� 
TEXT
�� 
wrat
�� rdwreof �� 
�� .rdwrwritnull���     ****
�� .rdwrclosnull���     ****�� "�j O��el E�O������� O�j � �� ����������� 0 copyppdtotmp copyPPDToTmp�� ����� �  ���� 0 ppd  ��  � ���� 0 ppd  �  ��� � ���
�� .sysoexecTEXT���     TEXT
�� 
badm�� �j O�%�%�el � �� �����������  0 writepreflight writePreflight��  ��  � ������ 0 	preflight  �� 0 f  �  � ��� ���������������������
�� .sysoexecTEXT���     TEXT
�� 
perm
�� .rdwropenshor       file
�� 
refn
�� 
as  
�� 
TEXT
�� 
wrat
�� rdwreof �� 
�� .rdwrwritnull���     ****
�� .rdwrclosnull���     ****�� &�E�O�j O��el E�O������� O�j � ������������ "0 writepostflight writePostflight��  ��  � ������ 0 
postflight  �� 0 f  � ����������������������
�� .sysoexecTEXT���     TEXT
�� 
perm
�� .rdwropenshor       file
�� 
refn
�� 
as  
�� 
TEXT
�� 
wrat
�� rdwreof �� 
�� .rdwrwritnull���     ****
�� .rdwrclosnull���     ****�� &�E�O�j O��el E�O������� O�j � ��*���������� 0 createpackage createPackage��  ��  � �������� 	0 title  �� 0 bundleid  �� 0 packagename  � 5��9�=�~�}�|�{�zIMQ]aetz��y���x
�� 
appr
� 
dtxt
�~ 
disp
�} stic   �| 
�{ .sysodlogaskr        TEXT
�z 
ttxt
�y 
strq
�x .sysoexecTEXT���     TEXT�� s�������� �,E�O�������� �,E�O�������� �,E�O���mva  a j OhY hOb   a %�a ,%a %�a ,%a %�a ,%j � �w��w �  ����v�u�t�s�r�q�p�o�n�m�l�k�j� ��� D B r o t h e r _ H L _ 1 4 4 0 _ _ _ M e d i a _ C e n t e r . p p d� ���  M S L a b _ B _ W . p p d� ���  M S L a b _ C o l o r . p p d�v  �u  �t  �s  �r  �q  �p  �o  �n  �m  �l  �k  �j  � �i��i �  ��� ���  M S L a b _ B _ W . p p d� ���  M S L a b _ C o l o r . p p d� ���� < P r i n t e r   M S L a b _ C o l o r >  I n f o   M S L a b   C o l o r  L o c a t i o n   M i d d l e   S c h o o l   L a b  M a k e M o d e l   H P   C o l o r   L a s e r J e t   3 8 0 0  D e v i c e U R I   l p d : / / 1 0 . 0 . 8 . 3 /  S t a t e   I d l e  S t a t e T i m e   1 2 8 8 2 9 1 2 8 9  R e a s o n   t o n e r - l o w - r e p o r t  T y p e   8 4 2 5 6 9 2  P r o d u c t   ( H e w l e t t - P a c k a r d   H P   C o l o r   L a s e r J e t   3 8 0 0 )  F i l t e r   a p p l i c a t i o n / v n d . c u p s - r a w   0   -  F i l t e r   a p p l i c a t i o n / v n d . c u p s - p o s t s c r i p t   0   / L i b r a r y / P r i n t e r s / h p / f i l t e r / h p P o s t P r o c e s s i n g . b u n d l e / C o n t e n t s / M a c O S / h p P o s t P r o c e s s i n g  A c c e p t i n g   Y e s  S h a r e d   N o  J o b S h e e t s   n o n e   n o n e  Q u o t a P e r i o d   0  P a g e L i m i t   0  K L i m i t   0  O p P o l i c y   d e f a u l t  E r r o r P o l i c y   s t o p - p r i n t e r  A t t r i b u t e   m a r k e r - c o l o r s   \ # 0 0 0 0 0 0 , # 0 0 F F F F , # F F 0 0 F F , # F F F F 0 0  A t t r i b u t e   m a r k e r - l e v e l s   - 1 , - 1 , - 1 , - 1  A t t r i b u t e   m a r k e r - n a m e s   B l a c k   C a r t r i d g e   H P   Q 6 4 7 0 A , C y a n   C a r t r i d g e   H P   Q 7 5 8 1 A , M a g e n t a   C a r t r i d g e   H P   Q 7 5 8 3 A , Y e l l o w   C a r t r i d g e   H P   Q 7 5 8 2 A  A t t r i b u t e   m a r k e r - t y p e s   t o n e r C a r t r i d g e , t o n e r C a r t r i d g e , t o n e r C a r t r i d g e , t o n e r C a r t r i d g e  A t t r i b u t e   m a r k e r - c h a n g e - t i m e   1 2 8 8 2 9 1 2 8 9  < / P r i n t e r > ��  ��  ��  ��  ��  ascr  ��ޭ