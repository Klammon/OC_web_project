package com.manu.beans;

public class Client {
    /* Propriétés du bean */
    private String nom;
    private String prenom;
    private String adresse;
    private String num_tel;
    private String mail;
     //Getters
	public String getNom() {
		return nom;
	}
	public String getPrenom() {
		return prenom;
	}
	public String getAdresse() {
		return adresse;
	}
	public String getNum_tel() {
		return num_tel;
	}
	public String getMail() {
		return mail;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}
	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}
	public void setNum_tel(String num_tel) {
		this.num_tel = num_tel;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}

    
 
}