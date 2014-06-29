
def incrementor(max)
    i = 0
    numbers = []

    while i < 6
        puts "At the top i is #{i}"
        numbers.push(i)

        i = i + 1
        puts "Numbers now: #{numbers}"
        puts "At the bottom i is #{i}"

    end
    return numbers
end

numbers = incrementor(6)
puts "The numbers: "

for num in numbers
    puts num
end
