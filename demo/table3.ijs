NB. table with combolists
NB.
NB. !!! this is experimental and *will* change...
NB.
NB. cover for the QTableWidget
NB.
NB. rows, cols are the data size
NB. headers do not include the top left cell
NB.
NB. cell types:
NB.  0   text
NB.  100 checkbox
NB.  200 combolist 
NB.  300 combobox
NB.
NB. cell align:
NB.  0 left
NB.  1 center
NB.  2 right
NB.
NB. set parameters:
NB.   block                - block mode for set (align2|edit2|type2|data2)
NB.                          row1 row2 col1 col2, for row2 and col2, _1 means last row or column
NB.   cell                 - cell data
NB.   data[2]              - table data
NB.   hdr                  - column headers
NB.   lab                  - row labels
NB.   type[2]              - cell type
NB.   sort                 - column [ascending|descending] only applies to type 0
NB.
NB. following are singleton or one per column:
NB.   hdralign  - column header align (make header first)
NB.
NB. following are singleton or one per ravelled data or block:
NB.   align[2] - alignment   (default left)
NB.   edit[2]  - if editable (default 1)
NB.   type[2]  - cell type   (default 0)
NB.
NB. set shape parameter - this resets the table:
NB.   shape rows cols
NB.
NB. get commands
NB.    cell row col - get contents of cell at row col
NB.    row r        - get contents of row r
NB.    col c        - get contents of column c
NB.    table        - get block data as LF delimited string
NB.                   optional argument [row col] ro [row1 row2 col1 col2]

coclass 'qtdemo'

NB. =========================================================
makedata=: 3 : 0
a=. ' 0 ',DEL,'"First Item" "Second Item" "Third Item"',DEL,' 11'
a=. a,' 1 "1 First Second Third" 23'
)

NB. =========================================================
table=: 3 : 0
wd 'pc table'
wd 'cc pac table 5 7'
wd 'set pac hdr Manufacturer Select Options Hire Lease Type Origin'
wd 'set pac hdralign 0 1 1 1 1 1 0'
wd 'set pac block 2 3 1 3'
wd 'set pac type2 100 200 0 100 200 0'
wd 'set pac edit2 1 1 0 0 1 1'
wd 'set pac data2 *',makedata''
NB. un-initialised cells default to text
wd 'set pac cell 0 0 "first cell"'
wd 'set pac block 3 4'
wd 'set pac type2 200'
wd 'set pac cell 3 4 *3 First Second Third Fourth'
wd 'set pac block 1 2 3 4'
wd 'set pac type2 0 100 100 0'
wd 'set pac align2 0 1 2 0'
wd 'set pac data2 mouse 1 0 "black cat"'
wd 'pmove 100 10 500 200'
wd 'pshow'
)

NB. =========================================================
table_pac_change=: 3 : 0
'row col'=. 0 ". pac_cell
smoutput (":row),' ',(":col),': ',pac_value
smoutput 3 4$ <;._2 wd'get pac table 1 3 1 4'
)


NB. =========================================================
table_close=: 3 : 0
wd 'pclose'
showevents_jqtide_ 0
)

NB. =========================================================
showevents_jqtide_ 2
table''