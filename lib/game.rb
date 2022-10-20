

class Game

	attr_accessor :player_array, :current_player, :new_board #pour lire et écrire la variable d'instance

	def initialize(player1, player2)
		@player_array = Array.new #créer un array avec 2 joueurs à l'intérieur (utile pour changer facilement le joueur actuel)


		@player_array << player1
		@player_array << player2
		@current_player = player1
		@new_board = Board.new
	end 

	def each_turn # méthode pour demander le cas au tableau
		while @new_board.victory? == false
			puts ">#{@current_player.name}, quel coup veux-tu jouer ? STP, une lettre en miniscules entre a et c et un chiffre de 1 à 3"
			choice = gets.chomp 
			@new_board.boardcase_array.each do |boardcase| 
					if boardcase.name_case == choice #comparer 2 chaînes
					then choice = boardcase#choice devient l'objet de la classe Boardcase qui a été choisie par le joueur


					end
				end
			choice.content = @current_player.sign #contenu de la case devenir le joueur signe
			@new_board.drawing_board #pour afficher le tableau


			@current_player = (@player_array.reverse!)[0] #pour changer le joueur actuel

	
			@new_board.count_turn	+= 1 # compteur de chaque tour


			break if @new_board.count_turn == 9 #rupture de la boucle si toutes les cases sont remplies sans gagnant


		end #fin de temps
		
		if @new_board.victory? == true
			@current_player = (@player_array.reverse!)[0] #besoin d'inverser le joueur actuel pour obtenir le vrai gagnant


			puts "Le gagnant est #{current_player.name} !!!"
			else puts "Match nul !!!"
		end	

	end

end #fin de cours