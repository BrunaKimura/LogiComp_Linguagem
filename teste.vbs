Function Soma openp x as Integer comma y as Integer closep as Integer
    Dim a as Integer
    a ASSGMT x plus y
    print a
    while a less 10
        a ASSGMT Soma openp a comma 1 closep
    wend
    
    Soma ASSGMT a
 
End Function


Sub main openp closep
    Dim a as Integer
    Dim b as Integer
    a ASSGMT 3
    b ASSGMT Soma openp a comma 4 closep
    print a
    print b
end sub