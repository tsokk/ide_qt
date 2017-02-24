NB. gl2 init

coclass 'jgl2'

3 : 0''
if. 0~: 4!:0 <'PROFONT_z_' do. PROFONT=: (('Linux';'Darwin';'Android';'Win') i. <UNAME){:: 'Sans 10' ; '"Lucida Grande" 10' ; (IFQT{::'Sans 10';'"Droid Sans" 10') ; 'Tahoma 10' else. PROFONT=: PROFONT_z_ end.
if. 0~: 4!:0 <'FIXFONT_z_' do. FIXFONT=: (('Linux';'Darwin';'Android';'Win') i. <UNAME){:: 'mono 10' ; 'Monaco 10' ; (IFQT{::'monospace 10';'"Droid Sans Mono" 10') ; '"Lucida Console" 10' else. FIXFONT=: FIXFONT_z_ end.
)

NB. gl2 constant

PS_NULL=: 0
PS_SOLID=: 1
PS_DASH=: 2
PS_DOT=: 3
PS_DASHDOT=: 4
PS_DASHDOTDOT=: 5

IDC_ARROW=: 0
IDC_UPARROW=: 1
IDC_CROSS=: 2
IDC_WAIT=: 3
IDC_IBEAM=: 4
IDC_SIZEVER=: 5
IDC_SIZEHOR=: 6
IDC_SIZEBDIAG=: 7
IDC_SIZEFDIAG=: 8
IDC_SIZEALL=: 9
IDC_BLANK=: 10
IDC_SPLITV=: 11
IDC_SPLITH=: 12
IDC_POINTINGHAND=: 13
IDC_FORBIDDEN=: 14
IDC_OPENHAND=: 17
IDC_CLOSEDHAND=: 18
IDC_WHATSTHIS=: 15
IDC_BUSY=: 16
IDC_DRAGMOVE=: 20
IDC_DRAGCOPY=: 19
IDC_DRAGLINK=: 21
IDC_UNSET=: _1

NB. numeric constants used in glcmds

glarc_n=: 2001
glbrush_n=: 2004
glbrushnull_n=: 2005
glcapture_n=: 2062
glcaret_n=: 2065
glclear_n=: 2007
glclip_n=: 2078
glclipreset_n=: 2079
glcmds_n=: 2999
glcursor_n=: 2069
glellipse_n=: 2008
glemfopen_n=: 2084
glemfclose_n=: 2085
glemfplay_n=: 2086
glfile_n=: 2066
glfill_n=: 2093
glfont_n=: 2012
glfontextent_n=: 2094
gllines_n=: 2015
glnodblbuf_n=: 2070
glpaint_n=: 2020
glpaintx_n=: 2021
glpen_n=: 2022
glpie_n=: 2023
glpixel_n=: 2024
glpixelsx_n=: 2075
glpixels_n=: 2076
glprint_n=: 2089
glprintmore_n=: 2091
glpolygon_n=: 2029
glqextent_n=: 2057
glqextentw_n=: 2083
glqpixels_n=: 2077
glqpixelm_n=: 2080
glqprintpaper_n=: 2092
glqprintwh_n=: 2088
glqtextmetrics_n=: 2058
glqtype_n=: 2095
glqwh_n=: 2059
glqhandles_n=: 2060
glrect_n=: 2031
glrgb_n=: 2032
glroundr_n=: 2033
glsel_n=: 2035
gltext_n=: 2038
gltextcolor_n=: 2040
gltextxy_n=: 2056
glwindoworg_n=: 2045

glbkmode_n=: 2003
glnoerasebkgnd_n=: 2071

glfont2_n=: 2312
glfontangle_n=: 2342
glrgba_n=: 2343
glsel2_n=: 2344

NB. opengl only
glwaitgl_n=: 2345
glwaitnative_n=: 2346

NB. keyboard events
kbBS=: Qt_Key_Backspace_jqtide_
kbTAB=: Qt_Key_Tab_jqtide_
kbLF=: Qt_Key_Enter_jqtide_
kbENTER=: Qt_Key_Enter_jqtide_
kbRETURN=: Qt_Key_Return_jqtide_
kbPUP=: Qt_Key_PageUp_jqtide_
kbPDOWN=: Qt_Key_PageDown_jqtide_
kbEND=: Qt_Key_End_jqtide_
kbHOME=: Qt_Key_Home_jqtide_
kbLEFT=: Qt_Key_Left_jqtide_
kbUP=: Qt_Key_Up_jqtide_
kbRIGHT=: Qt_Key_Right_jqtide_
kbDOWN=: Qt_Key_Down_jqtide_
kbESC=: Qt_Key_Escape_jqtide_
kbINS=: Qt_Key_Insert_jqtide_
kbDEL=: Qt_Key_Delete_jqtide_
kbMETA=: Qt_Key_Meta_jqtide_
kbALT=: Qt_Key_Alt_jqtide_
kbSHIFT=: Qt_Key_Shift_jqtide_
kbCTRL=: Qt_Key_Control_jqtide_
NB qt gl2

rpcinfinity=: 3 : 0
<. 0 (I.(_=y)+.__=y)}y
)

chkgl2=: 13!:8@3:^:(0&<)

NB. =========================================================
glarc=: chkgl2 @: (('"',libjqt,'" glarc >',(IFWIN#'+'),' i *i') cd <)
glbrush=: chkgl2 @: (('"',libjqt,'" glbrush >',(IFWIN#'+'),' i')&cd bind '')
glbrushnull=: chkgl2 @: (('"',libjqt,'" glbrushnull >',(IFWIN#'+'),' i')&cd bind '')
glcapture=: chkgl2 @: (('"',libjqt,'" glcapture >',(IFWIN#'+'),' i i')&cd)
glcaret=: chkgl2 @: (('"',libjqt,'" glcaret >',(IFWIN#'+'),' i *i') cd <)
glclear=: ('"',libjqt,'" glclear >',(IFWIN#'+'),' i')&cd bind ''
glclip=: chkgl2 @: (('"',libjqt,'" glclip >',(IFWIN#'+'),' i *i') cd <)
glclipreset=: chkgl2 @: (('"',libjqt,'" glclipreset >',(IFWIN#'+'),' i')&cd bind '')
glcmds=: chkgl2 @: (('"',libjqt,'" glcmds >',(IFWIN#'+'),' i *i i') cd (;#)@:rpcinfinity)
glcursor=: chkgl2 @: (('"',libjqt,'" glcursor >',(IFWIN#'+'),' i i')&cd)
glellipse=: chkgl2 @: (('"',libjqt,'" glellipse >',(IFWIN#'+'),' i *i') cd <@:<.)
glfill=: chkgl2 @: (('"',libjqt,'" glfill >',(IFWIN#'+'),' i *i') cd <@:<.)
glfont=: chkgl2 @: (('"',libjqt,'" glfont >',(IFWIN#'+'),' i *c') cd <@,)
glfont2=: chkgl2 @: (('"',libjqt,'" glfont2 >',(IFWIN#'+'),' i *i i') cd (;#)@:<.)
glfontangle=: chkgl2 @: (('"',libjqt,'" glfontangle >',(IFWIN#'+'),' i i')&cd)
glfontextent=: chkgl2 @: (('"',libjqt,'" glfontextent >',(IFWIN#'+'),' i *c') cd <@,)
gllines=: chkgl2 @: (('"',libjqt,'" gllines >',(IFWIN#'+'),' i *i i') cd (;#))
glnodblbuf=: chkgl2 @: (('"',libjqt,'" glnodblbuf >',(IFWIN#'+'),' i i') cd {.@(,&0))
glpen=: chkgl2 @: (('"',libjqt,'" glpen >',(IFWIN#'+'),' i *i') cd <@:(2 {. (,&1)))
glpie=: chkgl2 @: (('"',libjqt,'" glpie >',(IFWIN#'+'),' i *i') cd <)
glpixel=: chkgl2 @: (('"',libjqt,'" glpixel >',(IFWIN#'+'),' i *i') cd <)
glpixels=: chkgl2 @: (('"',libjqt,'" glpixels >',(IFWIN#'+'),' i *i i') cd (;#)@:<.)
glpixelsx=: chkgl2 @: (('"',libjqt,'" glpixelsx >',(IFWIN#'+'),' i *i') cd <@:<.)
glpolygon=: chkgl2 @: (('"',libjqt,'" glpolygon >',(IFWIN#'+'),' i *i i') cd (;#)@:<.)
glrect=: chkgl2 @: (('"',libjqt,'" glrect >',(IFWIN#'+'),' i *i') cd <@:rpcinfinity)
glrgb=: chkgl2 @: (('"',libjqt,'" glrgb >',(IFWIN#'+'),' i *i') cd <@:<.)
glrgba=: chkgl2 @: (('"',libjqt,'" glrgba >',(IFWIN#'+'),' i *i') cd <@:<.)
glsel1=: chkgl2 @: (('"',libjqt,'" glsel >',(IFWIN#'+'),' i x')&cd)
glsel2=: chkgl2 @: (('"',libjqt,'" glsel2 >',(IFWIN#'+'),' i *c') cd <@,)
gltext=: chkgl2 @: (('"',libjqt,'" gltext >',(IFWIN#'+'),' i *c') cd <@,)
gltextcolor=: chkgl2 @: (('"',libjqt,'" gltextcolor >',(IFWIN#'+'),' i')&cd bind '')
gltextxy=: chkgl2 @: (('"',libjqt,'" gltextxy >',(IFWIN#'+'),' i *i') cd <@:<.)
glwaitgl=: chkgl2 @: (('"',libjqt,'" glwaitgl >',(IFWIN#'+'),' i')&cd bind '')
glwaitnative=: chkgl2 @: (('"',libjqt,'" glwaitnative >',(IFWIN#'+'),' i')&cd bind '')
glwindoworg=: chkgl2 @: (('"',libjqt,'" glwindoworg >',(IFWIN#'+'),' i *i') cd <@:<.)

glsetlocale=: chkgl2 @: (('"',libjqt,'" glsetlocale >',(IFWIN#'+'),' i *c') cd <@,@>)

NB. =========================================================
NB. immediate paint
glpaint=: 3 : 0 "1
('"',libjqt,'" glpaint >',(IFWIN#'+'),' i')&cd ''
0
)

NB. =========================================================
NB. paint
glpaintx=: 3 : 0 "1
('"',libjqt,'" glpaintx >',(IFWIN#'+'),' i')&cd ''
0
)

NB. =========================================================
glqhandles=: 3 : 0"1
hs=. 3#2-2
chkgl2 ('"',libjqt,'" glqhandles >',(IFWIN#'+'),' i *x') cd <hs
hs
)

NB. =========================================================
glqtype=: 3 : 0"1
type=. 1#2-2
chkgl2 ('"',libjqt,'" glqtype >',(IFWIN#'+'),' i *i') cd <type
type
)

NB. =========================================================
glqwh=: 3 : 0"1
wh=. 2#2-2
chkgl2 ('"',libjqt,'" glqwh >',(IFWIN#'+'),' i *i') cd <wh
wh
)

NB. =========================================================
NB. return matrix of pixels
NB. wh is limited to pixmap size
NB. -1 in w or h means read to end
glqpixelm=: 3 : 0"1
n=. */ 2{.2}.y
pix=. n#2-2
shape=. 2#2-2
chkgl2 ('"',libjqt,'" glqpixelm >',(IFWIN#'+'),' i *i *i *i') cd y;shape;pix
shape$pix
)

NB. =========================================================
NB. result is in opengl form
NB. pixels top to bottom, RGB24
NB. TODO
glqpixels=: 3 : 0"1
n=. */ 2{.2}.y
pix=. n#2-2
chkgl2 ('"',libjqt,'" glqpixels >',(IFWIN#'+'),' i *i *i') cd y;pix
pix
)

NB. =========================================================
NB. TODO
glqextent=: 3 : 0"1
wh=. 2#2-2
chkgl2 ('"',libjqt,'" glqextent >',(IFWIN#'+'),' i *c *i') cd (,y);wh
wh
)

NB. =========================================================
NB. TODO
glqextentw=: 3 : 0"1
y=. y,(LF~:{:y)#LF [ y=. ,y
w=. (+/LF=y)#2-2
chkgl2 ('"',libjqt,'" glqextentw >',(IFWIN#'+'),' i *c *i') cd y;w
w
)

NB. =========================================================
NB. font information: Height, Ascent, Descent, InternalLeading, ExternalLeading, AverageCharWidth, MaxCharWidth
NB. TODO
glqtextmetrics=: 3 : 0"1
tm=. 7#2-2
chkgl2 ('"',libjqt,'" glqtextmetrics >',(IFWIN#'+'),' i *i') cd tm
tm
)

NB. =========================================================
glsetbrush=: glbrush @ glrgb
glsetpen=: glpen @ ((1 1 [ glrgb) :((2 {. (,&1)) glrgb))

NB. =========================================================
NB. printer

NB. not implemented
glprint=: [:
glprintmore=: [:
glqprintpaper=: [:
glqprintwh=: [:

NB. not implemented
glemfclose=: [:
glemfopen=: [:
glemfplay=: [:
glfile=: [:
glroundr=: [:

NB. =========================================================
glsel=: glsel1`glsel2@.(2=3!:0)


NB. util

NB. =========================================================
RGBA=: 3 : 'r (23 b.) 8 (33 b.) g (23 b.) 8 (33 b.) b (23 b.) 8 (33 b.) a [ ''r g b a''=. <.y'
BGRA=: 3 : 'b (23 b.) 8 (33 b.) g (23 b.) 8 (33 b.) r (23 b.) 8 (33 b.) a [ ''r g b a''=. <.y'

NB. =========================================================
NB. pafc v Polar angle from cartesian coords
pafc=: 2p1&|@{:@:(*.@(j./))

rfd=: *&(1p1%180)
dfr=: *&(180%1p1)

NB. calcAngle gives polar angle in radians with zero at 3-o'clock
NB. from rectangular coordiates with origin (0,0) at the top, left
NB. (xctr,yctr) calcAngle xpt,ypt
calcAngle=: ([: pafc _1 1 * -)"1

NB. =========================================================
NB. convert radians to 64ths-of-a-degree
degree64=: 0.5 <.@:+ 64 * dfr

NB. =========================================================
NB. opengl (and normal folk?) are ARGB with A 0
NB. glpixels and glqpixels need to make these adjustments
3 : 0''
if. IF64 do.
  ALPHA=: 0{_3 ic 0 0 0 255 255 255 255 255{a.
else.
  ALPHA=: 0{_2 ic 0 0 0 255{a.
end.
''
)
NOTALPHA=: 0{_2 ic 255 255 255 0{a.
ALPHARGB=: IF64{::_1;16bffffffff

NB. =========================================================
NB. arc drawing - glellipse, glarc, glpie
NB. draw arc on the ellipse defined by rectangle
NB. arc starts at xa,ya and ends at xz,yz (counterclockwise)
NB. points need not lie on the ellipse
NB. they define a line from the center that intersects ellipse
NB. gdk arc has same xywh but args are start and end angles
NB. counterclockwise in 64th degrees

NB. =========================================================
parseFontname=: 3 : 0
font=. ' ',y
b=. (font=' ') > ~:/\font='"'
a: -.~ b <@(-.&'"');._1 font
)

NB.*FontStyle n Regular Bold Italic Underline Strikeout
NB.             0       1    2      4         8
FontStyle=: ;:'regular bold italic underline strikeout'

parseFontSpec=: 3 : 0
'ns styleangle'=. 2 split parseFontname y
'face size'=. ns
size=. 12". size
style=. FontStyle i. tolower each styleangle
style=. <.+/2^<:(style ((> 0) *. <) #FontStyle) # style
if. 1 e. an=. ('angle'-:5&{.)&> styleangle do.
  degree=. 10%~ 0". 5}.>(an i. 1){styleangle
else.
  degree=. 0
end.
face;size;style;degree
)

NB. delete leading white spaces
dlws=: 3 : 0
y }.~ +/ *./\ (y e. ' ')+.(y e. LF)+.(y e. TAB)
)

NB. count leading white spaces
clws=: 3 : 0
+/ *./\ (y e. ' ')+.(y e. LF)+.(y e. TAB)
)

NB. get first argument and remove enclosing dquotes or DEL
NB. update global noun wdglptr on exit
wdglshiftarg=: 3 : 0
if. (#wdglstr) = wdglptr=: wdglptr + clws wdglptr}. wdglstr do. '' return. end.
y=. wdglptr}.wdglstr
b=. y e. ' '
a=. y e. '*'
q=. 2| +/\ y e. '"'
d=. 2| +/\ y e. DEL
b=. b *. -.q+.d
a=. a *. -.q+.d
if. 1={.a do.     NB. *argument
  z=. }.y
  wdglptr=: #wdglstr
elseif. (1={.d)+.(1={.q) do.   NB. enclosed between DEL or "
  p2=. 1+ (}.y) i. {.y
  z=. }.p2{.y
  wdglptr=: wdglptr+ p2+1
elseif. 1 e. b do. NB. space delimited
  p2=. {.I.b
  z=. p2{.y
  wdglptr=: wdglptr+ 1+p2
elseif. do.
  z=. y
  wdglptr=: #wdglstr
end.
<z
)

NB. get all arguments by repeating calling wdglshiftarg
wdglshiftargs=: 3 : 0
wdglptr=: 0 [ wdglstr=: y
z=. 0$<''
while. wdglptr < #wdglstr do. z=. z, wdglshiftarg'' end.
z
)

tors=: 3 : 0
(2{.y),(2{.y)+2}.y
)
