coclass 'jqtide'

ContextHelp=: ,'j'
ContextTarget=: 'dict'
helpcontext=: 3 : 0
ContextTarget=: 'dict'
helpcontext_do y
)
helpcontext1=: 3 : 0
ContextTarget=: 'nuvoc'
helpcontext_do y
)
helpcontext_do=: 3 : 0
ndx=. 2 { I. ' ' = 40 {. y
'class bgn end'=. 0 ". ndx {. y
txt=. (ndx+1) }. y
if. end > bgn do.
  sel=. (1+end-bgn) {. bgn }. txt
else.
  sel=. helppos class;bgn;txt,LF
end.
if. 0=#sel do. '' return. end.
helpsel sel
)
helpndx=: 3 : 0
y=. ,y
if. 2 = 3!:0 y do.
  if. 'goto_' -: 5{.y do. y=. 'goto_?'
  elseif. 'for_' -: 4{.y do. y=. 'for_?'
  elseif. 'label_' -: 6{.y do. y=. 'label_?'
  end.
  top=. <y
  if. top e. DICT do.
    >DICTX {~ DICT i.top
  else.
    ''
  end.
else.
  ''
end.
)
helpndx_nuvoc=: 3 : 0
cname ,y
)
helppos=: 3 : 0
'class pos txt'=. y
txt=. ucp txt
txt=. txt {.~ pos + (pos }. txt) i. LF
ndx=. - (|. txt) i. LF
pos=. pos - ndx + #txt
txt=. ndx {. txt
if. '[-' -: }. 3 {. txt do.
  if. helperror utf8 txt do. '' return. end.
end.
if. class=0 do.
  at=. pos{txt,LF
  as=. pos{LF,txt
  if. *./ (at,as) e. ' ',LF do.
    '' [ helpword utf8 txt return.
  end.
end.
sep=. {.~ <./ @ (i.&('() ''',{.a.))
beg=. sep&.|. pos{.txt
bit=. beg,sep pos}.txt

if. 0=#bit-.' ' do.
  txt=. ''
else.
  wds=. ;:utf8 bit
  len=. #&>}:wds
  txt=. > wds {~ 0 i.~ (#beg)>:+/\len
end.

txt
)
helpsel=: 3 : 0
assert. 2=3!:0 y
s=. dlb@dtb y
if. 0=#s do. return. end.
if. 0=#ContextHelp do. return. end.
for_h. ,ContextHelp do.
  select. h
  case. 'j' do.
    if. ContextTarget -: 'dict' do.
      if. #ndx=. helpndx s do.
        'dictionary/',ndx return.
      end.
    else.
      if. #ndx=. helpndx_nuvoc s do.
        ndx return.
      end.
    end.
  case. 'b' do.
    if. #n=. tagtag_jbaselibtag_ s do.
      htmlhelpbaselib tagfile_jbaselibtag_ {.n return.
    end.
  end.
end.
''
)
helpword=: 3 : 0
r=. ;: :: 0: y
if. r -: 0 do.
  smoutput LF,'word formation failed: ',dlb y
else.
  smoutput r
  smoutput ''
end.
)
htmlhelpbaselib=: 3 : 0
  if. fexist f=. jpath '~.Main/', y do.
    open f
  else.
    browse_j_ 'http://www.jsoftware.com/wsvn/base8/trunk/', y
  end.
''
)
CBYTE=: 0 : 0
=eq
<lt
>gt
_under
+plus
*star
-minus
%percent
^hat
$dollar
~tilde
|bar
.dot
:co
,comma
;semi
#number
!bang
/slash
\bslash
[squarelf
]squarert
{curlylf
}curlyrt
(parenlf
)parenrt
'apostrophe
"quote
`grave
@at
&amp
?query
0zero
1one
2two
3three
4four
5five
6six
7seven
8eight
9nine
)

cbyte=: (3 : 0)"0
if.     y e. 'abcdefghijklmnopqrstuvwxyz' do. < y
elseif. y e. 'ABCDEFGHIJKLMNOPQRSTUVWXYZ' do. < 'cap' ,~ tolower y
elseif. y e. CBYTE {~ I. 1 , }: LF=CBYTE  do. < }. LF taketo (CBYTE i. y) }. CBYTE
elseif. do. ''
end.
)

cname=: ; @: cbyte

assert 'eq' 		-: cname '='
assert 'eqco' 		-: cname '=:'
assert 'ncapbcapdot' 	-: cname 'NB.'
helperror=: 3 : 0
0 return.
)
j=. <;._2 (0 : 0)
= d000
=. d001
=: d001
< d010
<. d011
<: d012
> d020
>. d021
>: d022
_ d030
_. d031
_: d032
+ d100
+. d101
+: d102
* d110
*. d111
*: d112
- d120
-. d121
-: d122
% d130
%. d131
%: d132
^ d200
^. d201
^: d202n
$ d210
$. d211
$: d212
~ d220n
~. d221
~: d222
| d230
|. d231
|: d232
. d300
.. d301
.: d301
: d310n
:. d311
:: d312
, d320
,. d321
,: d322
; d330
;. d331
;: d332
# d400
#. d401
#: d402
! d410
!. d411
!: d412
/ d420
/. d421
/: d422
\ d430
\. d431
\: d432
[ d500
[: d502
] d500
{ d520
{. d521
{: d522
{:: d523
} d530n
}. d531
}: d532
" d600n
". d601
": d602
` d610
`: d612
@ d620
@. d621
@: d622
& d630n
&. d631
&: d632
&.: d631c
? d640
?. d640
__ d030
a. dadot
a: dadot
A. dacapdot
b. dbdotn
C. dccapdot
d. dddot
D. ddcapdot
D: ddcapco
e. dedot
E. decapdot
f. dfdot
H. dhcapdot
i. didot
i: dico
I. dicapdot
j. djdot
L. dlcapdot
L: dlcapco
M. dmcapdot
o. dodot
p. dpdot
p.. dpdotdot
p: dpco
q: dqco
r. drdot
s: dsco
S: dscapco
t. dtdotm
t: dtco
T. dtcapdot
u: duco
x: dxco
assert. cassert
break. cbreak
catch. ctry
do. ctrl
else. cif
elseif. cif
end. ctrl
label_? cgoto
case. csel
continue. ccont
fcase. csel
for. cfor
for_? cfor
goto_? cgoto
if. cif
return. cret
select. csel
throw. cthrow
try. ctry
while. cwhile
whilst. cwhile
0: dconsf
1: dconsf
2: dconsf
3: dconsf
4: dconsf
5: dconsf
6: dconsf
7: dconsf
8: dconsf
9: dconsf
_1: dconsf
_2: dconsf
_3: dconsf
_4: dconsf
_5: dconsf
_6: dconsf
_7: dconsf
_8: dconsf
_9: dconsf
)

n=. j i.&> ' '
DICT=: n {.each j
DICTX=: (n+1) }.each j
