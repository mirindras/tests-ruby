#addition
def add(x , y)
    return x + y
end

#soustraction
def subtract(x , y)
    return x - y
end

#sum d'un tableau
def sum(tab)
    tab.sum
end

#multiplication
def multiply (*args)
    args.inject(1)  {|product,x| product * x}
end

#puissance
def power (a,b)
    a ** b
end

#factoriel
def factorial (num)
    if num == 0
        0
    elsif num == 1
        1
    else
        multiply *(1..num)
    end
end