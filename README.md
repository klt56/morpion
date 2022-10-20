# morpion


application : 
attr_accessor :partie ## pour lire et écrire la variable d'instance
def initialize        # appelle la classe Show avec un nouveau tableau
def create_player1    #demande le nom du 2ème joueur qui joue avec le x.
def create_player2 #demande le nom du 2ème joueur qui joue avec le o.

class Board:
attr_accessor :boardcase_array, :count_turn, :cellules ## pour lire et écrire la variable d'instance
def initialize                                         #méthode pour démarrer une nouvelle carte avec un tableau
@count_turn = 0                                        #compter le nombre de tour jusqu'à 9, donc c'est TIRAGE = match nul

drawing_board                                          #pour afficher le tableau
@cellules = @boardcase_array.map{|x| x.content}        #pour ne mettre que le contenu de chaque boardcase dans un tableau
def victory?                                           #méthode pour savoir quand il y a un gain

class Boardcase
attr_accessor :name_case, :content, :position          #pour lire et écrire la variable d'instance

class Game
@player_array = Array.new                              #créer un array avec 2 joueurs à l'intérieur (utile pour changer facilement le joueur actuel)
def each_turn                                          # méthode pour demander le cas au tableau
if boardcase.name_case == choice                       #comparer 2 chaînes
then choice = boardcase                                #choice devient l'objet de la classe Boardcase qui a été choisie par le joueur
choice.content = @current_player.sign                  #contenu de la case devenir le joueur signe
@new_board.drawing_board                               #pour afficher le tableau
@current_player = (@player_array.reverse!)[0]          #pour changer le joueur actuel
@new_board.count_turn	+= 1                           # compteur de chaque tour
break if @new_board.count_turn == 9                    #rupture de la boucle si toutes les cases sont remplies sans gagnant
@current_player = (@player_array.reverse!)[0]          #besoin d'inverser le joueur actuel pour obtenir le vrai gagnant

class Player
attr_accessor :name, :sign                             #pour lire et écrire le nom de la variable d'instance une valeur, le signe X ou O

class Show
system "clear"                                         #pour vider le tableau




