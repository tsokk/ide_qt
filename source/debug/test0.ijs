f=: 4&+ @ (4 : '<5')

c=: +

NB. =========================================================
d=: 3 : 0"0
a=. b
2=c
)

NB. =========================================================
foo=: 3 : 0
a=. 3 + y
b=. 1 + 5 goo a
c=. 2
)

NB. =========================================================
goo=: 4 : 0
d=. x $ , y
e=. 1 + hoo d
f=. 2
)

NB. =========================================================
hoo=: 3 : 0
t=. 0
1
2
if. #y do.
  t=. 0
else.
  t=. 1
end.
t=. 2
)

load 'debug'
dbg 1

dbss 'hoo 1'
foo i.2 3 4
