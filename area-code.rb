dial_book ={
    "newyark"=>"211",
    "edison"=>"231",
    "newbrunswick"=>"233",
    "plainsboro"=>"234",
    "sanfrancisco"=>"344",
    "newjersey"=>"431"
}

def get_city_name(somehash)
    somehash.keys
end

def get_area_code(somehash,key)
    somehash[key]
end

loop do
    puts "Do you want to lookup area code based on city name? (Y/N)"
    answer = gets.chomp
    break if answer !="y"
    puts "Which city do you want lookup the areacode for?"
    puts get_city_name(dial_book)
    puts "Enter your selection"    
    cityname = gets.chomp

    if dial_book.include?(cityname)
        puts "The Area code for #{cityname} is #{get_area_code(dial_book,cityname)}."
    else
        puts "You have entered invalid city name"
    end
end