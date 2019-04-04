def game

	#Affichage de l'escalier
	for i in 0...10

		for k in i...10
			print " "
		end
		for l in 0..i
			print "#"
		end

		puts " "
	end	

	
	#Au debut le joueur est sur aucune marche
	cpt = 0 

	#Cette variable permet de récupérer le nombre d'itération qu'il faut pour atteindre la 10ème marche
	num = 1
	while (cpt < 10)
		
		var = Random.new.rand(1..6)
		puts "Dé affiche #{var}"
	

		if (var == 5 || var == 6)
			puts "Tu avances d'une marche, donc tu es sur la marche  #{cpt +=1}"
	
		elsif (var == 2 || var == 3 || var == 4)
			puts " Rien ne se passe, tu ne bouges pas de case"

		else
			puts "Tu descends d'une case, donc tu es sur la marche #{cpt -=1}"
		end	

		puts " "

		puts "Nb Itérations : #{num+=1}"
	end


	if cpt == 10
		puts "Tu as attient le sommet ! Félicitation !!!"
		exit
	end

	
	
		
end


def average_finish_time


	for i in 0...100
		
		game
		
	end
	
end

average_finish_time