" Vim syntax file
" Language: Quick Database Diagrams (quickdatabasediagrams.com)
" Maintainer: Frank Jonen
" Latest Revision: 08 December 2019

if exists("b:current_syntax")
  finish
endif


syn match    dbCommentNotes     "Notes\:."       skipwhite
syn match    dbCommentNotes     "Description\:." skipwhite
syn match    dbComment          "#.*$"           contains=dbCommentNotes,@Spell

syn match    dbRefTable         "\w*\(\.\)\@="
syn match    dbRefDot           "\." 
syn match    dbRefCol           "\w\(\.\w*\)\@<="


syn match    dbTableHead        "^.*$\n-.*$" contains=dbComment,dbAlias
syn match    dbParens           "(\|)" 
syn match    dbCharValue        "(\d*)" contains=dbParens

syn match    dbJoinMarker_1t1   "\s\zs-\ze\s"
syn match    dbJoinMarker_1tm   "\s\zs-<\ze\s"
syn match    dbJoinMarker_mt1   "\s\zs>-\ze\s"
syn match    dbJoinMarker_mtm   "\s\zs>-<\ze\s"
syn match    dbJoinMarker_1t0   "\s\zs-0\ze\s"
syn match    dbJoinMarker_0t1   "\s\zs0-\ze\s"
syn match    dbJoinMarker_0t0   "\s\zs0-0\ze\s"
syn match    dbJoinMarker_1zm   "\s\zs-0<\ze\s"
syn match    dbJoinMarker_zm1   "\s\zs>0-\ze\s"

syn keyword  dbInt              int
syn keyword  dbString           string
syn keyword  dbPrimKey          PK
syn keyword  dbForKey           FK
syn keyword  dbAlias            as
syn keyword  dbRel              rel
syn keyword  dbFinance          money
syn keyword  dbNull             NULL
syn keyword  dbUnique           UNIQUE
syn keyword  dbChar             char varchar

syn region   dbTable start="^--*$\n" end="\n\(\w.*$\n-\)\@=" fold keepend extend contains=dbTableHead,dbComment,dbRefTable,dbRefDot,dbRefCol,dbJoinMarker_1t1,dbJoinMarker_1tm,dbJoinMarker_mt1,dbJoinMarker_mtm,dbJoinMarker_1t0,dbJoinMarker_0t1,dbJoinMarker_0t0,dbJoinMarker_1zm,dbJoinMarker_zm1,dbInt,dbString,dbPrimKey,dbForKey,dbAlias,dbRel,dbFinance,dbNull,dbUnique,dbChar,dbCharValue,dbParens

let b:current_syntax = "qdb"

hi def link  dbInt              Type
hi def link  dbFinance          Type
hi def link  dbString           Type
hi def link  dbPrimKey          Boolean
hi def link  dbForKey           Boolean
hi def link  dbComment          Comment
hi def link  dbCommentNotes     VimCommentTitle
hi def link  dbTableHead        Label
hi def link  dbAlias            Define
hi def link  dbRel              Define
hi def link  dbRefDot           Include
hi def link  dbRefCol           Identifier
hi def link  dbRefTable         Label
hi def link  dbNull             Special
hi def link  dbChar             Typedef
hi def link  dbCharValue        Number
hi def link  dbParens           Include
hi def link  dbUnique           PreCondit

hi def link  dbJoinMarker_1t1   Include 
hi def link  dbJoinMarker_1tm   Include
hi def link  dbJoinMarker_mt1   Include
hi def link  dbJoinMarker_mtm   Include
hi def link  dbJoinMarker_1t0   Include
hi def link  dbJoinMarker_0t1   Include
hi def link  dbJoinMarker_0t0   Include
hi def link  dbJoinMarker_1zm   Include
hi def link  dbJoinMarker_zm1   Include

