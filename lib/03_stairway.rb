def game(cpt)

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

	var = Random.new.rand(1..6)
	puts var
	
	#Au debut le joueur est sur aucune marche

	
	if (var == 5 || var == 6)
		puts "tu avances d'une marche, donc tu es sur la marche  #{cpt +=1}"
	
	elsif (var == 2 || var == 3 || var == 4)
		puts " Rien ne se passe, tu ne bouges pas de case"

	else
		puts "Tu descends d'une case, donc tu es sur la marche #{cpt -=1}"
	end



	return cpt
		
end


def average_finish_time


	for i in 0...100
		i +=game(0)
		
		puts "n° de l'itération #{i}"

		if i == 10
			puts "Tu as attient le sommet ! Félicitation !!!"
			return nil
		end

		k+=1

	end
	
end

average_finish_time