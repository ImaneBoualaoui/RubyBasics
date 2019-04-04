def signup
	puts "Saissisez un mot de passe :"
	print ">"
	#password = gets.chomp

	#Pour que le mot de passe ne soit pas visible
	require 'io/console'
	password = STDIN.noecho(&:gets).chomp
	return password	
end

def login(password)
	puts "Saissisez à nouveau votre mot de passe :"
	print ">"
	#password_again = gets.chomp

	#Pour que le mot de passe ne soit pas visible
	require 'io/console'
	password_again = STDIN.noecho(&:gets).chomp

	while password_again != password 
		puts "le mot de passe ne correspond pas, veuillez le saissir à nouveau :"
		print ">"
		#password_again = gets.chomp
		
		#Pour que le mot de passe ne soit pas visible
		require 'io/console'
		password_again = STDIN.noecho(&:gets).chomp

	end
	return password_again
end

def welcome_scree(password, password_again)
	if password == password_again
		puts "Accès autorisé ! Bienvenue !"
		puts "Vous avez accès à tous les messages !"
		
	end
end

def perform
	password = signup
	password_again = login(password)

	welcome_scree(password, password_again)
end

perform