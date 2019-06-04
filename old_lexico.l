%{
#include <stdio.h>
%}


identifier [a−zA−Z_][a−zA−Z0−9_]*
string "[a−zA−Z_][a−zA−Z0−9_]*"
integer-constant [0-9]*
character-constant [a−zA−Z_]*
floating-constant [0-9]*\.?[0-9]

%%
void         TOKEN(void)
char         TOKEN(char)
short        TOKEN(short)
int          TOKEN(int)
long         TOKEN(long)
float        TOKEN(float)
double       TOKEN(double)
signed       TOKEN(signed)
unsigned     TOKEN(unsigned)
 
logic_or     TOKEN(logic_or)
logic_and    TOKEN(logic_and)
in_or        TOKEN(in_or)
ex_or        TOKEN(ex_or)
and          TOKEN(and)
equal        TOKEN(equal)
diff         TOKEN(diff)
bigger       TOKEN(bigger)
less         TOKEN(less)
bigger_equal TOKEN(bigger_equal)
less_equal   TOKEN(less_equal)
plus         TOKEN(plus)
minus        TOKEN(minus)
mult         TOKEN(mult)
div          TOKEN(div)
rest         TOKEN(rest)
pp           TOKEN(pp)
mm           TOKEN(mm)
 
mult_equal   TOKEN(mult_equal)
div_equal    TOKEN(div_equal)
rest_equal   TOKEN(rest_equal)
plus_equal   TOKEN(plus_equal)
minus_equal  TOKEN(minus_equal)
and_equal    TOKEN(and_equal)
inor_equal   TOKEN(inor_equal)
or_equal     TOKEN(or_equal)
not_bit      TOKEN(not_bit)
not          TOKEN(not)

colon        TOKEN(colon)
semicolon    TOKEN(semicolon)
comma        TOKEN(comma)
receive      TOKEN(receive)
question     TOKEN(question)
open_p       TOKEN(open_p)
close_p      TOKEN(close_p)
open_b       TOKEN(open_b)
close_b      TOKEN(close_b)
open_braces  TOKEN(open_braces)
close_braces TOKEN(close_braces)

case         TOKEN(case)
default      TOKEN(default)   
if           TOKEN(if)
else         TOKEN(else)
switch       TOKEN(switch)
while        TOKEN(while)
do           TOKEN(do)
for          TOKEN(for)
goto         TOKEN(goto)
continue     TOKEN(continue)
break        TOKEN(break)
return       TOKEN(return)

identifier         TOKEN(identifier)
string             TOKEN(string)
integer-constant   TOKEN(integer-constant)
character-constant TOKEN(character-constant)
floating-constant  TOKEN(floating-constant)
%%