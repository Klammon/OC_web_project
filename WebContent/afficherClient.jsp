<%@ page pageEncoding="UTF-8" %>


<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Affichage d'un client</title>
        <link type="text/css" rel="stylesheet" href="inc/style.css" />
    </head>
    <body>
        <%-- Affichage de la chaîne "message" transmise par la servlet --%>
        <p class="info">${ message }</p>
        
        <%-- Puis affichage des données enregistrées dans le bean "client" transmis par la servlet --%>
        <p>Nom : ${ client.nom }</p>
        <p>Prénom : ${ client.prenom }</p>
        <p>Adresse : ${ client.adresse }</p>
        <p>Numéro de téléphone : ${ client.num_tel }</p>
        <p>Email : ${ client.mail }</p>       
    </body>
    <!-- mettre l'expreiion dans une variable + l'afficher
    <c:set var="message" value="je met l'expression dans cet attribut message" />  
  	<c:out value="${message}"/> 
    -->
<%-- Crée un objet de type String --%>
<c:set scope="session" var="description" value="Je suis une loutre." />

<%-- Crée un objet du type du bean ici spécifié dans l'attribut 'value'
<c:set scope="session" var="allezeuuu" value="enfin" />
<c:out value="${sessionScope.allezeuuu}" />
--%>



</html>