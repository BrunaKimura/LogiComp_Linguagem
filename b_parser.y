%token
void char short int long float double signed unsigned
logic_or logic_and in_or ex_or and equal diff bigger less bigger_equal less_equal plus minus mult div rest pp mm 
mult_equal div_equal rest_equal plus_equal minus_equal and_equal inor_equal or_equal not_bit not 
colon semicolon comma receive question open_p close_p open_b close_b open_braces close_braces
case default if else switch while do for goto continue break return
identifier string integer-constant character-constant floating-constant
%%

external-declaration: 
                    | external-declaration function-definition
                    | external-declaration declaration
    ;
function-definition: declaration-specifier declarator declaration compound-statement
    ;
declaration-specifier: 
                     | type-specifier
    ;
type-specifier: int
              | bool
    ;
specifier-qualifier: type-specifier
    ;
declarator: direct-declarator
    ;
direct-declarator: identifier
                 | open_p declarator close_p
                 | direct-declarator
                 | direct-declarator constant-expression 
                 | direct-declarator open_p parameter-type-list close_p
                 | direct-declarator open_p multi-identifier close_p
    ;
multi-identifier: | identifier
    ;
constant-expression: conditional-expression
    ;
conditional-expression: logical-or-expression
                      | logical-or-expression question expression colon conditional-expression
    ;
logical-or-expression: logical-and-expression
                     | logical-or-expression logic_or logical-and-expression
    ;
logical-and-expression: inclusive-or-expression
                      | logical-and-expression logic_and inclusive-or-expression
    ;
inclusive-or-expression: exclusive-or-expression
                       | inclusive-or-expression in_or exclusive-or-expression
    ;
exclusive-or-expression: and-expression
                       | exclusive-or-expression ex_or and-expression
    ;
and-expression: equality-expression
              | and-expression and equality-expression
    ;
equality-expression: relational-expression
                   | equality-expression equal relational-expression
                   | equality-expression diff relational-expression
    ;
relational-expression: additive-expression
                     | relational-expression less additive-expression
                     | relational-expression bigger additive-expression
                     | relational-expression less_equal additive-expression
                     | relational-expression bigger_equal additive-expression
    ;
additive-expression: multiplicative-expression
                   | additive-expression plus multiplicative-expression
                   | additive-expression minus multiplicative-expression
    ;
multiplicative-expression: unary-expression
                         | multiplicative-expression mult unary-expression
                         | multiplicative-expression div unary-expression
                         | multiplicative-expression rest unary-expression
    ;
unary-expression: postfix-expression
                | pp unary-expression
                | mm unary-expression
    ;
postfix-expression: primary-expression
                  | postfix-expression open_b expression close_b
                  | postfix-expression open_p assignment-expression close_p
                  | postfix-expression pp
                  | postfix-expression mm
    ;
primary-expression: identifier
                  | constant
                  | string
                  | open_p  expression close_p
    ;
constant: integer-constant
        | character-constant
        | floating-constant
    ;
expression: assignment-expression
          | expression comma assignment-expression
    ;
assignment-expression: 
                     | conditional-expression
                     | unary-expression  assignment-operator assignment-expression
    ;
assignment-operator: receive
                   | mult_equal
                   | div_equal
                   | rest_equal
                   | plus_equal
                   | minus_equal
                   | and_equal
                   | inor_equal
                   | or_equal
    ;
unary-operator: and
              | mult
              | plus
              | minus
              | not_bit
              | not
    ;
type-name: specifier-qualifier
         | specifier-qualifier direct-abstract-declarator
    ;
parameter-type-list: parameter-list
                   | parameter-list comma
    ;
parameter-list: parameter-declaration
              | parameter-list comma parameter-declaration
    ;
parameter-declaration: declaration-specifier
                     | declaration-specifier declarator
                     | declaration-specifier direct-abstract-declarator 
    ;
direct-abstract-declarator: open_p direct-abstract-declarator close_p
                          | direct-abstract-declarator open_b constant-expression close_b
                          | open_b constant-expression close_b
                          | direct-abstract-declarator open_b close_b
                          | direct-abstract-declarator open_p parameter-type-list close_p
                          | open_p parameter-type-list close_p
                          | direct-abstract-declarator open_p close_p
    ;
typedef-name: identifier
    ;
declaration: 
           | declaration-specifier init-declarator semicolon
    ;
init-declarator: 
               |declarator
               | declarator receive initializer
    ;
initializer: assignment-expression
           | initializer-list
           | initializer-list comma
    ;
initializer-list: initializer
                | initializer-list comma initializer
    ;
compound-statement: open_braces declaration statement close_braces
    ;
statement: labeled-statement
         | expression-statement
         | compound-statement
         | selection-statement
         | iteration-statement
         | jump-statement
    ;
labeled-statement: identifier colon statement
                | case constant-expression colon statement  
                | default colon statement
    ; 
expression-statement: semicolon 
                    |expression semicolon
    ;
selection-statement: if open_p expression close_p statement
                   | if open_p  expression close_p statement else  statement
                   | switch open_p expression close_p statement
    ;
iteration-statement: while open_p expression close_p statement
                   | do statement while open_p expression close_p semicolon
                   | for open_p expression semicolon expression semicolon expression close_p statement
    ;
jump-statement: goto identifier semicolon
              | continue semicolon
              | break semicolon
              | return expression semicolon
              | return semicolon
    ; 
                