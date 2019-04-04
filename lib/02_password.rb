def signup
	puts "Saissisez un mot de passe :"
	print ">"
	password = gets.chomp
	return password	
end

def login(password)
	puts "Saissisez à nouveau votre mot de passe :"
	print ">"
	password_again = gets.chomp

	if password_again != password
		while password_again != password
			puts "le mot de passe ne correspond pas, veuillez le saissir à nouveau :"
			print ">"
			password_again = gets.chomp
		end
		
	end
	else
		puts "le mot de passe est correct, vous allez être redirigez vers la page d'acceuil"
	end	

	return password_again
end

#def method_name
	
#end

def perform
	password = signup
	login(password)
end

perform