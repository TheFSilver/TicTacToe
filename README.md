# TicTacToe

Jeu <a href="https://fr.wikipedia.org/wiki/Tic-tac-toe">Tic-Tac-Toe</a>, pour deux joueurs, codé en Ruby.<br>
Le tic-tac-toe, aussi appelé « morpion » (par analogie au jeu de <a href="https://fr.wikipedia.org/wiki/Morpion_(jeu)">morpion</a>) et « oxo » en Belgique, est un <a href="https://fr.wikipedia.org/wiki/Jeu">jeu</a> de réflexion se pratiquant à deux joueurs au tour par tour dont le but est de créer le premier un alignement.<br>
Le jeu se joue généralement avec <a href="https://fr.wikipedia.org/wiki/Jeu_de_papier_et_crayon">papier et crayon</a>.<br>
> Source: <a href="https://fr.wikipedia.org/wiki/Wikip%C3%A9dia:Accueil_principal">Wikipédia</a>.

## Instructions ##

### Installation du jeu ###

Ouvrez votre Terminal et déplacez-vous dans le dossier où vous souhaitez installer le jeu.
Entrez les commandes suivantes :
```
git clone https://github.com/TheFSilver/TicTacToe.git
cd TicTacToe/
bundle install
```

### Lancement du jeu ###
```
ruby TicTacToeGame.rb
```
### Règles du jeu ###

Deux joueurs s'affrontent.<br>
Ils doivent remplir chacun à leur tour une case de la grille avec le symbole qui leur est attribué : <b>X</b> et <b>O</b>.<br>
Le gagnant est celui qui arrive à aligner trois symboles identiques, horizontalement, verticalement ou en diagonale.

En raison du nombre de combinaisons limité, l'analyse complète du jeu est facile à réaliser : si les deux joueurs jouent chacun de manière optimale, la partie doit toujours se terminer par un match nul. 

### Concepteurs ###

Conçu en Ruby, ligne par ligne, par Jeremy Rak ( <a href="https://github.com/skageraz">Skageraz</a> ) et François D. ( <a href="https://github.com/TheFSilver">TheFSilver</a> ).
