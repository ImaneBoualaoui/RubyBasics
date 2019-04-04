def half_pyramid
	puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
	print ">"
	val = gets.chomp
	puts val

	puts "Voici la pyramide :"

	num = val.to_i

	
	for i in 0...num
		for l in 0..i
			print "#"
		end
	
		puts " "
	end

	puts " "
end

def full_pyramid (num)
	#puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
	#print ">"
	#val = gets.chomp
	#puts val

	#puts "Voici la pyramide :"

	#num = val.to_i

	#Premiere bouble qui compte le nombre d'etage
	for i in 1..num
		
		#Deuxieme boucle qui compte le nombre d'espace 
		for k in i..num-1

				print " "
		end

		#Troisieme bouble pour les etoiles
		for l in 1..2*i-1
			print "*"
		end

		puts " "
	end
	
end


def wtf_pyramid(num)
	
	num.downto(1) { |n|
		puts " "*(num-n+1) + "*"*(n*2-1)
	  }
	
end


def perform
	puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? (choisis un nombre impair)"
	print ">"
	val = gets.chomp
	puts val
	num = val.to_i

	if num%2 == 0
		puts "tu as choisis un nombre pair, il faut choisir un nombre impair"
		return nil
	end

	puts "Voici la pyramide :"

	pivot = num/2 + 1

	full_pyramid(pivot)
	wtf_pyramid(num-pivot)
end

perform