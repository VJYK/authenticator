users = [
    {username: "Vijay", password:"vijay123"},
    {username: "Anu", password: "anu123"},
    {username: "danish", password: "danish123"}
]
def auth_users(username, password, list_users)
    list_users.each do |user_record|
        if user_record[:username] == username && user_record[:password] == password
            return user_record
        
        end
    end
    "Credentials were not correct"
end
puts "Welcome to the Authenticator"
30.times {print "-"}
puts
attempts = 1
while attempts < 4
    print "UserName:"
    username = gets.chomp
    print "Password:"
    password = gets.chomp
    authenticator = auth_users(username,password, users)
    puts authenticator
    puts "Press n to exit, otherwise press any to continue"
    input = gets.chomp.downcase
    break if input == "n"
    attempts +=1
end

puts "Attempts exceeded more than chance" if attempts == 4