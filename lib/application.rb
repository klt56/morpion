
class Application

	attr_accessor :partie ## pour lire et écrire la variable d'instance



	def initialize # appelle la classe Show avec un nouveau tableau
		Show.new
		create_player1
		create_player2
		@partie = Game.new(@player1, @player2) #jeu de classe
		@partie.each_turn
	end

	def create_player1 #demande le nom du 2ème joueur qui joue avec le x.
		puts "> Quel est ton nom Joueur 1 ? Tu seras les X"
		print">"
		name_player1 = gets.chomp
		@player1 = Player.new(name_player1, "X")
	end

	def create_player2 #demande le nom du 2ème joueur qui joue avec le o.
		puts "> Quel est ton nom Joueur 2 ? Tu seras les O"
		print">"
		name_player2 = gets.chomp
		@player2 = Player.new(name_player2, "0")
	end

end