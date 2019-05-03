%token
colon logic_or logic_and in_or ex_or and equal diff plus minus mult div rest pp mm comma receive mult_equal div_equal rest_equal
plus_equal minus_equal and_equal inor_equal or_equal not_bit not semicolon if else switch while do for qm open_p close_p

%token DS D
%%



function-definition :  DS  declarator D
compound-statement
    ;
declaration-specifier :   type-qualifier
    ;
type-specifier :  void
    | char
    | short
    | int
    | long
    | float
    | double
    | signed
    | unsigned
    ;
constant-expression :   conditional-expression
    ;
conditional-expression :   logical-or-expression
    |  logical-or-expression qm  expression colon  conditional-expression
    ;
logical-or-expression :   logical-and-expression
    |  logical-or-expression logic_or  logical-and-expression
    ;
logical-and-expression :   inclusive-or-expression
    |  logical-and-expression logic_and  inclusive-or-expression
    ;
inclusive-or-expression :   exclusive-or-expression
    |  inclusive-or-expression in_or  exclusive-or-expression
    ;
exclusive-or-expression :   and-expression
    |  exclusive-or-expression ex_or  and-expression
    ;
and-expression :   equality-expression
    |  and-expression and  equality-expression
    ;
equality-expression :   relational-expression
    |  equality-expression equal  relational-expression
    |  equality-expression diff  relational-expression
    ;
additive-expression :   multiplicative-expression
    |  additive-expression plus  multiplicative-expression
    |  additive-expression minus  multiplicative-expression
    ;
multiplicative-expression :   cast-expression
    |  multiplicative-expression mult  cast-expression
    |  multiplicative-expression div  cast-expression
    |  multiplicative-expression rest  cast-expression
    ;
cast-expression :   unary-expression
    | open_p  type-name close_p  cast-expression
    ;
unary-expression :   postfix-expression
    | pp  unary-expression
    | mm  unary-expression
    |  unary-operator  cast-expression
    | sizeof  unary-expression
    | sizeof  type-name
    ;
primary-expression :   identifier
    |  constant
    |  string
    | open_p  expression close_p
    ;
constant :   integer-constant
    |  character-constant
    |  floating-constant
    |  enumeration-constant
    ;
expression :   assignment-expression
    |  expression comma  assignment-expression
    ;
assignment-expression :   conditional-expression
    |  unary-expression  assignment-operator  assignment-expression
    ;
assignment-operator :  receive
    | mult_equal
    | div_equal
    | rest_equal
    | plus_equal
    | minus_equal
    | and_equal
    | inor_equal
    | or_equal
    ;
unary-operator :  and
    | mult
    | plus
    | minus
    | not_bit
    | not
    ;
expression-statement :  {expression}qm semicolon
    ;
selection-statement :  if open_p  expression close_p  statement
    | if open_p  expression close_p  statement else  statement
    | switch open_p  expression close_p  statement
    ;
iteration-statement :  while open_p  expression close_p  statement
    | do  statement while open_p  expression close_p semicolon
    | for open_p {expression}qm semicolon {expression}qm semicolon {expression}qm
close_p  statement
    ;
statement : expression-statement
            | selection-statement
            | iteration-statement