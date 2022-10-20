

class Show

    def initialize
        system "clear" #pour vider le tableau
        puts "                              |-------------------------------------------|"
        puts "                              |                                           |"
        puts "                              |    Bienvenue sur le jeu du MORPION !      |"
        puts "                              |                                           |"
        puts "                              |-------------------------------------------|"
        puts "\n\n"
        #Mode d'emploi expliquée...

        puts "Vous êtes deux joueurs: l’un joue avec le signe X et l’autre avec le signe O. Vous remplissez alternativement les cellules vides."
        puts "Au début du jeu, il y a 9 cellules vides dans un tableau"
        puts "Le but est de placer 3 signes identiques sur une colonne, une ligne ou une diagonale."
        puts "Le jeu prend fin si le panneau est entièrement rempli et si aucun joueur n’arrive à atteindre le but. Bonne chance!"
        puts "\n\n"
    end

end #fin de cours