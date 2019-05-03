%{
#include <stdio.h>
%}

%%
colon       TOKEN(colon)
logic_or    TOKEN(logic_or)
logic_and   TOKEN(logic_and)
in_or       TOKEN(in_or)
ex_or       TOKEN(ex_or)
and         TOKEN(and)
equal       TOKEN(equal)
diff        TOKEN(diff)
plus        TOKEN(plus)
minus       TOKEN(minus)
mult        TOKEN(mult)
div         TOKEN(div)
rest        TOKEN(rest)
pp          TOKEN(pp)
mm          TOKEN(mm)
comma       TOKEN(comma)
receive     TOKEN(receive)
mult_equal  TOKEN(mult_equal)
div_equal   TOKEN(div_equal)
rest_equal  TOKEN(rest_equal)
plus_equal  TOKEN(plus_equal)
minus_equal TOKEN(minus_equal)
and_equal   TOKEN(and_equal)
inor_equal  TOKEN(inor_equal)
or_equal    TOKEN(or_equal)
not_bit     TOKEN(not_bit)
not         TOKEN(not)
semicolon   TOKEN(semicolon)


if          TOKEN(if)
else        TOKEN(else)
switch      TOKEN(switch)
while       TOKEN(while)
do          TOKEN(do)
for         TOKEN(for)
?           TOKEN(qm)
(           TOKEN(open_p)
)           TOKEN(close_p)
enum		TOKEN(enum)

%%