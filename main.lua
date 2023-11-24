GeneraNumero = function(a,b)
    math.randomseed(os.time()) 
    return math.random(a, b) 
end

Personaggio = function() 
    print("Welcome to the Number Guessing Game!")
    print("  \\o/")
    print("   |")
    print("  / \\")
end

function main()
    Personaggio()
    io.write("Enter the Minimum number: ")
    local mini = tonumber(io.read()) 
    io.write("Enter the Maximum number: ")
    local maxx = tonumber(io.read()) 
    local numero = GeneraNumero(mini, maxx)

    io.write("Enter the number to guess: ")
    local numerodaindovinare = tonumber(io.read()) 

    local punteggio = 0
    if numero == numerodaindovinare then
        punteggio = punteggio + 2
        print("Congratulations! You've won 2 points!")
    elseif numero == numerodaindovinare + 4 or numero == numerodaindovinare - 4 then
        punteggio = punteggio + 1
        print("You've won 1 point! Close enough!")
    else
        print("You lost!")
        print("The number to guess was: " .. numero)
    end
end

main() 
