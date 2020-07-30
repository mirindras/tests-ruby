#return hello
def hello
    return "Hello!"
end

def greet(name)
    
    return "Hello, #{name}!"

end
#recuperation de l'input user
greet(gets.chomp)