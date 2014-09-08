
18!:4 <'base'
18!:55 <'qtdemo'
coclass 'qtdemo'

sububar=: I. @(e.&'_')@]}
maketitle=: ' '&sububar each @ cutopen ;._2
fexist=: 1:@(1!:4)@boxopen ::0:

qtmajor=: 0 ". ({.~ i.&'.') '/s' -.~ (}.~ i.&'/') wd 'version'
qtslim=: 's' e. wd 'version'

win8x64=: 3 : 0''
if. IFWIN *: IF64 do. 0 return. end.
'w98 bld hi lo'=. 2 32768 256 256 #: 'kernel32 GetVersion > i' 15!:0 ''
(hi>1)*.(lo>5)
)

TITLES=: maketitle 0 : 0
controls dcontrols
datetime ddatetime
edit dedit
edith dedith
editm deditm
form_styles dpstyles
gl2 dgl2
grid_layout dgrid
ide dide
image dimage
mbox dmbox
mbdialog dmbdialog
menu dmenu
msgs dmsgs
pen_styles dpenstyles
plot dplot
printer dprinter
progressbar dprogressbar
quickview1 dquickview1
quickview2 dquickview2
quickwidget dquickwidget
scrollarea dscrollarea
shader dshader
slider dslider
spinbox dspinbox
split dsplit
statusbar dstatusbar
table dtable
table2 dtable2
table3 dtable3
tabs dtabs
timer dtimer
toolbar dtoolbar
toolbarv dtoolbarv
viewmat dviewmat
webd3 dwebd3
websocket dwebsocket
websocket_client dwebsocketclient
webview dwebview
)

NB. =========================================================
QTDEMO=: 0 : 0
pc qtdemo closeok;pn "Demos Select";
bin v;
cc static1 static;cn "static1";
bin h;
minwh 200 400;cc listbox listbox;
bin v;
cc ok button;cn "OK";
cc cancel button;cn "Cancel";
cc view button;cn "View Source";
bin s;
cc addons button;cn "Install addons";
bin zzz;
rem form end;
)

NB. =========================================================
qtdemo_run=: 3 : 0
wd QTDEMO
wd 'set static1 text *Select a Qt demo from the list below:'
wd 'set listbox items ',;DEL,each ({."1 TITLES),each DEL
wd 'set listbox select 0'
wd 'setfocus listbox'
wd 'pshow;'
)

NB. =========================================================
qtdemo_close=: 3 : 0
wd 'pclose'
)

NB. =========================================================
qtdemo_listbox_button=: 3 : 0
fn=. > {: (".listbox_select) { TITLES
fn~0
)

NB. =========================================================
qtdemo_enter=: qtdemo_ok_button=: qtdemo_listbox_button
qtdemo_cancel_button=: qtdemo_close

NB. =========================================================
dcontrols=: load bind (jpath '~addons/ide/qt/demo/controls.ijs')
ddatetime=: load bind (jpath '~addons/ide/qt/demo/datetime.ijs')
dedit=: load bind (jpath '~addons/ide/qt/demo/edit.ijs')
dedith=: load bind (jpath '~addons/ide/qt/demo/edith.ijs')
deditm=: load bind (jpath '~addons/ide/qt/demo/editm.ijs')
dgl2=: load bind (jpath '~addons/ide/qt/demo/gl2.ijs')
dgrid=: load bind (jpath '~addons/ide/qt/demo/grid.ijs')
dide=: load bind (jpath '~addons/ide/qt/demo/ide.ijs')`notsupport@.('Android'-:UNAME)
dimage=: load bind (jpath '~addons/ide/qt/demo/image.ijs')
dmbox=: load bind (jpath '~addons/ide/qt/demo/mbox.ijs')
dmbdialog=: load bind (jpath '~addons/ide/qt/demo/mbdialog.ijs')`notsupport@.('Android'-:UNAME)
dmenu=: load bind (jpath '~addons/ide/qt/demo/menu.ijs')
dmsgs=: load bind (jpath '~addons/ide/qt/demo/msgs.ijs')
dpenstyles=: load bind (jpath '~addons/ide/qt/demo/penstyles.ijs')
dplot=: load bind (jpath '~addons/ide/qt/demo/plot.ijs')
dprinter=: load bind (jpath '~addons/ide/qt/demo/printer.ijs')`notsupport@.('Android'-:UNAME)
dprogressbar=: load bind (jpath '~addons/ide/qt/demo/progressbar.ijs')
dpstyles=: load bind (jpath '~addons/ide/qt/demo/pstyles.ijs')
dquickview1=: load bind (jpath '~addons/ide/qt/demo/quickview1.ijs')`notsupport@.((qtmajor=5)+.qtslim+.'Android'-:UNAME)
dquickview2=: load bind (jpath '~addons/ide/qt/demo/quickview2.ijs')`notsupport@.((qtmajor=4)+.qtslim>'Android'-:UNAME)
dquickwidget=: load bind (jpath '~addons/ide/qt/demo/quickwidget.ijs')`notsupport@.((qtmajor=4)+.qtslim+.('Win'-:UNAME)+.'Android'-:UNAME)
dscrollarea=: load bind (jpath '~addons/ide/qt/demo/scrollarea.ijs')
dshader=: load bind (jpath '~addons/ide/qt/demo/shader.ijs')`notsupport@.(win8x64+.(qtslim>'Android'-:UNAME))
dslider=: load bind (jpath '~addons/ide/qt/demo/slider.ijs')
dspinbox=: load bind (jpath '~addons/ide/qt/demo/spinbox.ijs')
dsplit=: load bind (jpath '~addons/ide/qt/demo/split.ijs')
dstatusbar=: load bind (jpath '~addons/ide/qt/demo/statusbar.ijs')
dtable=: load bind (jpath '~addons/ide/qt/demo/table.ijs')
dtable2=: load bind (jpath '~addons/ide/qt/demo/table2.ijs')
dtable3=: load bind (jpath '~addons/ide/qt/demo/table3.ijs')
dtabs=: load bind (jpath '~addons/ide/qt/demo/tabs.ijs')
dtimer=: load bind (jpath '~addons/ide/qt/demo/timer.ijs')`notsupport@.('Android'-:UNAME)
dtoolbar=: load bind (jpath '~addons/ide/qt/demo/toolbar.ijs')
dtoolbarv=: load bind (jpath '~addons/ide/qt/demo/toolbarv.ijs')
dviewmat=: load bind (jpath '~addons/ide/qt/demo/viewmat.ijs')
dwebd3=: load bind (jpath '~addons/ide/qt/demo/webd3.ijs')`notsupport@.(qtslim+.'Android'-:UNAME)
dwebsocket=: load bind (jpath '~addons/ide/qt/demo/websocket.ijs')`notsupport@.(qtslim>'Android'-:UNAME)
dwebsocketclient=: load bind (jpath '~addons/ide/qt/demo/websocketclient.ijs')`notsupport@.(qtslim>'Android'-:UNAME)
dwebview=: load bind (jpath '~addons/ide/qt/demo/webview.ijs')`notsupport@.(qtslim+.'Android'-:UNAME)

NB. =========================================================
qtdemo_view_button=: 3 : 0
f=. }. > {: (".listbox_select) { TITLES
textview f;1!:1 <jpath '~addons/ide/qt/demo/',f,'.ijs'
)

NB. =========================================================
qtdemo_addons_button=: 3 : 0
require 'pacman'
'update' jpkg ''
'install' jpkg 'api/gles demos/wd'
if. IFWIN do.
  require 'arc/zip'
  install_jzlib_ ::0: ''
  load 'arc/zip'
elseif. UNAME-:'Android' do.
  require 'math/lapack'
  install_jlapack_ ::0: ''
end.
)

NB. =========================================================
checkrequire=: 3 : 0
'req install'=. y
if. *./fexist getscripts_j_ req do. 1 return. end.
sminfo 'To run this demo, first install: ',install
0
)

NB. =========================================================
notsupport=: 3 : 0
sminfo 'This demo is not supported on ', UNAME, ' ', wd 'version'
)

NB. =========================================================
qtdemo_run''
