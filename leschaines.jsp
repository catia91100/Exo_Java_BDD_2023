la<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>Les chaines</title>
</head>
<body bgcolor=white>
<h1>Exercices sur les chaines de charactères</h1>
<form action="#" method="post">
    <p>Saisir une chaine (Du texte avec 6 caractères minimum) : <input type="text" id="inputValeur" name="chaine">
    <p><input type="submit" value="Afficher">
</form>
<%-- Récupération des valeurs --%>
    <% String chaine = request.getParameter("chaine"); %>
    
    <% if (chaine != null) { %>

    <%-- Obtention de la longueur de la chaîne --%>
    <% int longueurChaine = chaine.length(); %>
    <p>La longueur de votre chaîne est de <%= longueurChaine %> caractères</p>

    <%-- Extraction du 3° caractère dans votre chaine --%>
    <% char caractereExtrait = chaine.charAt(2); %>
    <p>Le 3° caractère de votre chaine est la lettre <%= caractereExtrait %></p>

    <%-- Obtention d'une sous-chaîne --%>
    <% String sousChaine = chaine.substring(2, 6); %>
    <p>Une sous chaine de votre texte : <%= sousChaine %></p>

    <%-- Recharche de la lettre "e" --%>
    <% char recherche = 'e'; 
       int position = chaine.indexOf(recherche); %>
    <p>Votre premier "e" est en : <%= position %></p>

    
<h2>Exercice 1 : Combien de 'e' dans notre chaine de charactère ?</h2>
<p>Ecrire un programme pour compter le nombre de lettre e dans votre chaine de charactères</p>
<%
    int cpt = 0;
   for(char c : chaine.toCharArray()){
        
        if (c == 'e'){cpt ++;} 
        
     }
     %>
     <p>il y a <%= cpt %> fois le lettre 'e'</p>  
        
    return 0;
}

<h2>Exercice 2 : Affichage verticale</h2>
<p>Ecrire le programme pour afficher le texte en vertical</br>
Exemple : Bonjour</br>
B</br>
o</br>
n</br>
j</br>
o</br>
u</br>
r</p>
<%
        String mot = "Bonjour";
        for (char c : mot.toCharArray()) {
    %>
    <p><%= c %></p>
    <%
        }
    %>

    <% } else { %>
        <p>Veuillez entrer une chaîne de caractères !</p>




<h2>Exercice 3 : Retour à la ligne</h2>
<p>La présence d'un espace provoque un retour à la ligne </br>
Exemple : L'hiver sera pluvieux</br>
L'hiver</br>
sera</br>
pluvieux</p>
 <%
        String phrase = "L'hiver sera pluvieux";
        String[] lignes = phrase.split(" "); 
        for (String ligne : lignes) {
    %>
        <%= ligne %><br> 
    <% } %>

<h2>Exercice 4 : Afficher une lettre sur deux</h2>
<p>Ecrire le programme pour afficher seulement une lettre sur deux de votre texte </br>
Exemple : L'hiver sera pluvieux</br>
Lhvrsr lvex</p>
  <%
        String lettre = "L'hiver sera pluvieux"; 
        for (int i = 0; i < lettre.length(); i++) {
            if (i % 2 == 0) { 
    %>
                <%= lettre.charAt(i) %><br> 
    <%  
            }
        } 
    %>

<h2>Exercice 5 : La phrase en verlant</h2>
<p>Ecrire le programme afin d'afficher le texte en verlant </br>
Exemple : L'hiver sera pluvieux</br>
xueivulp ares revih'l</p>
  <%
        String phraseVerlant = "L'hiver sera pluvieux";
        if (phraseVerlant != null && !phrase.isEmpty()) { 
            for (int i = phraseVerlant.length() - 1; i >= 0; i--) {
             
    %>
                <%= phraseVerlant.charAt(i) %><br> 
    <%  
            }  
        } 
    %>

<h2>Exercice 6 : Consonnes et voyelles</h2>
<p>Ecrire le programme afin de compter les consonnes et les voyelles dans votre texte</p>
char chaine [] ="l'hiver sera pluvieux";
String voyelle [] = "aeiouyAEIOUY";
int nbvoyelles = 0;
int nbconsonnes = 0;
int estVoyelles=0;

for(int i=0; i<=strlen(chaine); i++){
for(int j=0; j<=strlen(voyelle); j++){
    if(chaine [i]== voyelle[j]){estVoyelles = 1;}
        }

if(estVoyelles){
nbvoyelles++;
}else {
nbconsonnes++
}
}

printf("le nombre de voyelles:%d /n", nbvoyelles)
printf("le nombre de consonnes: %d /n", nbconsonnes)
<% } %>
<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
