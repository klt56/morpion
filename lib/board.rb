class Board # with 9 cases

	attr_accessor :boardcase_array, :count_turn, :cellules ## pour lire et écrire la variable d'instance


	def initialize #méthode pour démarrer une nouvelle carte avec un tableau


		@boardcase_array = Array.new
		@count_turn = 0 #compter le nombre de tour jusqu'à 9, donc c'est TIRAGE = match nul


		@a1 = Boardcase.new("a1"," ", 0)
		@a2 = Boardcase.new("a2"," ", 1)
		@a3 = Boardcase.new("a3"," ", 2) 
		@b1 = Boardcase.new("b1"," ", 3)
		@b2 = Boardcase.new("b2"," ", 4)
		@b3 = Boardcase.new("b3"," ", 5)
		@c1 = Boardcase.new("c1"," ", 6)
		@c2 = Boardcase.new("c2"," ", 7)
		@c3 = Boardcase.new("c3"," ", 8)

		@boardcase_array << @a1 << @a2 << @a3 << @b1 << @b2 << @b3 << @c1 << @c2 << @c3#pour remplir le tableau boardcase_array
		drawing_board #pour afficher le tableau


	end

	def drawing_board #méthode pour dessiner le tableau


		@cellules = @boardcase_array.map{|x| x.content} #pour ne mettre que le contenu de chaque boardcase dans un tableau
    puts " "*6+" "*6 + "1" + " "*10 + "2" + " "*10 +"3"
    puts " "*6+"-"*34
    puts " "*6+"|"+ " "* 10 + "|" + " "* 10 + "|" + " "* 10 + "|"
    puts " "*2+ "a"+ " "*3 +"|"+ " "*5 + "#{cellules[0]}"+ " "*4 + "|" + " "*5 + "#{cellules[1]}"+ " "*4 + "|" + " "*5 + "#{cellules[2]}"+ " "*4 + "|"
    puts " "*6+"|"+ " "* 10 + "|" + " "* 10 + "|" + " "* 10 + "|"
    puts " "*6+"-"*34
    puts " "*6+"|"+ " "* 10 + "|" + " "* 10 + "|" + " "* 10 + "|"
    puts " "*2+ "b"+ " "*3 +"|"+" "*5 + "#{cellules[3]}"+ " "*4 + "|" + " "*5 + "#{cellules[4]}"+ " "*4 + "|" + " "*5 + "#{cellules[5]}"+ " "*4 + "|"
    puts " "*6+"|"+ " "* 10 + "|" + " "* 10 + "|" + " "* 10 + "|"
    puts " "*6+"-"*34
    puts " "*6+"|"+ " "* 10 + "|" + " "* 10 + "|" + " "* 10 + "|"
    puts " "*2+ "c"+ " "*3 +"|"+ " "*5 + "#{cellules[6]}"+ " "*4 + "|" +" "*5 + "#{cellules[7]}"+ " "*4 + "|" + " "*5 + "#{cellules[8]}"+ " "*4 + "|"
    puts " "*6+"|"+ " "* 10 + "|" + " "* 10 + "|" + " "* 10 + "|"
    puts " "*6+"-"*34
    puts " "
  end

  def victory? #méthode pour savoir quand il y a un gain
   	if  @cellules[0] == @cellules[1] && @cellules[1] == @cellules[2] && @cellules[0] != " " 
   		return true
  	elsif @cellules[3] == @cellules[4] && @cellules[4] == @cellules[5] && @cellules[3] != " "
  		return true
  	elsif @cellules[6] == @cellules[7] && @cellules[7] == @cellules[8] && @cellules[6] != " "
 			return true
 		elsif @cellules[0] == @cellules[3] && @cellules[3] == @cellules[6] && @cellules[0] != " "
  		return true
  	elsif @cellules[1] == @cellules[4] && @cellules[4] == @cellules[7] && @cellules[1] != " "
  		return true
  	elsif @cellules[2] == @cellules[5] && @cellules[5] == @cellules[8] && @cellules[2] != " "
  		return true
  	elsif @cellules[0] == @cellules[4] && @cellules[4] == @cellules[8] && @cellules[0] != " "
  		return true
  	elsif @cellules[2] == @cellules[4] && @cellules[4] == @cellules[6] && @cellules[2] != " "
  		return true
  	else return false
  	end
  end

end #fin de cours