<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Affichage d'une commande</title>
        <link type="text/css" rel="stylesheet" href="inc/style.css" />
    </head>
    <body>
        <%-- Affichage de la chaîne "message" transmise par la servlet --%>
        <p class="info">${ message }</p>
        <%-- Puis affichage des données enregistrées dans le bean "commande" transmis par la servlet --%>
        <p>Client</p>
        <%-- Les 5 expressions suivantes accèdent aux propriétés du client, qui est lui-même une propriété du bean commande --%>
        <p>Nom : ${ commande.client.nom }</p>
        <p>Prénom : ${ commande.client.prenom }</p>
        <p>Adresse : ${ commande.client.adresse }</p>
        <p>Numéro de téléphone : ${ commande.client.num_tel }</p>
        <p>Email : ${ commande.client.mail }</p>
        <br> <br />
        <p>Commande</p>
        <p>Date  : ${ commande.date }</p> 
        <p>Montant  : ${ commande.montant }</p> 
        <p>Mode de paiement  : ${ commande.mode_paiement }</p> 
        <p>Statut du paiement  : ${ commande.statut_paiement }</p> 
        <p>Mode de livraison  : ${ commande.mode_livraison }</p> 
        <p>Statut de la livraison  : ${ commande.statut_livraison }</p> 
    </body>
</html>