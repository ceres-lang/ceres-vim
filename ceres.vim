" Vim syntax file
" Language: Ceres
" Maintainer: Ceres Language

" --------------------------------------------------------------------------
" Experimental syntax highlighting in vim for the Ceres Programming Language
" --------------------------------------------------------------------------

if exists("b:current_syntax")
  finish
endif

let b:current_syntax = "ceres"

" Keywords
syntax keyword ceresKeyword case
syntax keyword ceresKeyword const def
syntax keyword ceresKeyword if elif else exit for while loop
syntax keyword ceresKeyword fn 

" In the future imports (modules) will be of the form 'use module'
syntax keyword ceresKeyword use
syntax keyword ceresKeyword mod

" Types
syntax keyword ceresKeyword int bool char str void
hi link ceresKeyword Keyword

" Values
syntax region ceresString start=/\v"/ skip=/\v\\./ end=/\v"/
syntax match ceresConst "\vtrue|false|nil"
syntax match ceresConst "\v[0-9]+|0x[0-9a-fA-F]+|0b[01]+"
syntax match ceresConst "\v'(\\.|[^\\'])'"

" Identifiers
syntax match ceresIdent "[a-zA-Z_]+"

hi link ceresString String
hi link ceresConst Constant
hi link ceresIdent Identifier

syntax match ceresComment "\v//.*$"
hi link ceresComment Comment
