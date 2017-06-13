package com.manu.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;

import com.manu.beans.Client;

public class CreationClient extends HttpServlet {
	
	public void doGet( HttpServletRequest request, HttpServletResponse response )
			throws ServletException, IOException 
	{
		
		/*recup de la saisie */
		String nom = request.getParameter( "nomClient" );
		String prenom = request.getParameter( "prenomClient" );
		String adresse = request.getParameter( "adresseClient" );
		String num_tel = request.getParameter( "num_telClient" );
		String mail = request.getParameter( "mailClient" );
		
        
		String message;
		
        /*.
         * Initialisation du message à afficher : si un des champs obligatoires
         * du formulaire n'est pas renseigné, alors on affiche un message
         * d'erreur, sinon on affiche un message de succès
         */
        if ( nom.trim().isEmpty() || adresse.trim().isEmpty() || num_tel.trim().isEmpty() ) 
        {
            message = "Erreur - Vous n'avez pas rempli tous les champs obligatoires. <br> <a href=\"creerClient.jsp\">Cliquez ici</a> pour accéder au formulaire de création d'un client.";
        } else {
            message = "Client bien crée !";
        } 
		/*création du bean client et init des données recup*/
        Client client = new Client();
        client.setNom( nom );
        client.setPrenom( prenom );
        client.setAdresse( adresse );
        client.setNum_tel( num_tel );
        client.setMail( mail );

        /* Ajout du bean et du message à l'objet requête */
        request.setAttribute( "client", client );
        request.setAttribute( "message", message );

        
        /* Transmission à la page JSP en charge de l'affichage des données */
        this.getServletContext().getRequestDispatcher( "/afficherClient.jsp" ).forward( request, response );      
	}
}