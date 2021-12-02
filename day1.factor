USING:
kernel
prettyprint
io
io.files
io.encodings.utf8
sequences
splitting
math
math.parser ;

IN: advent2021.day1

: file-lines ( filename -- lineseq ) utf8 file-contents string-lines ;

: lines>numbers ( lineseq -- numberseq ) [ string>number ] map ;

: increment-if-increased ( acc a b -- acc ) < [ 1 + ] [ ] if ;

: 2window ( seq -- aseq bseq ) dup rest-slice ;

: main ( -- ) "./inputs/1/input" file-lines lines>numbers 2window 0 [ increment-if-increased ] 2reduce . ;

MAIN: main
