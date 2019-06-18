%{
#include <stdio.h>
%}


identifier [a−zA−Z_][a−zA−Z0−9_]*
string "[a−zA−Z_][a−zA−Z0−9_]*"
integer-constant [0-9]*
character-constant [a−zA−Z_]*
floating-constant [0-9]*\.?[0-9]

%%
int          TOKEN(int)
bool         TOKEN(bool)

or           TOKEN(or)
and          TOKEN(and)
assgmt       TOKEN(assgmt)
bigger       TOKEN(bigger)
less         TOKEN(less)
plus         TOKEN(plus)
minus        TOKEN(minus)
mult         TOKEN(mult)
div          TOKEN(div)
not          TOKEN(not)

comma        TOKEN(comma)
openp        TOKEN(open_p)
closep       TOKEN(close_p)

sub          TOKEN(sub)
function     TOKEN(function)   
if           TOKEN(if)
else         TOKEN(else)
while        TOKEN(while)

identifier         TOKEN(identifier)
string             TOKEN(string)
%%