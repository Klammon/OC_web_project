package com.manu.beans;

public class Commande {
	private Client client;
	private String Date;
	private Double Montant;
	private String Mode_paiement;
	private String Statut_paiement;
	private String Mode_livraison;
	private String Statut_livraison;

	public Client getClient() {
		return client;
	}
	public void setClient(Client client) {
		this.client = client;
	}
	public String getDate() {
		return Date;
	}
	public void setDate(String date) {
		Date = date;
	}
	public Double getMontant() {
		return Montant;
	}
	public void setMontant(Double montant) {
		Montant = montant;
	}
	public String getMode_paiement() {
		return Mode_paiement;
	}
	public void setMode_paiement(String mode_paiement) {
		Mode_paiement = mode_paiement;
	}
	public String getStatut_paiement() {
		return Statut_paiement;
	}
	public void setStatut_paiement(String statut_paiement) {
		Statut_paiement = statut_paiement;
	}
	public String getMode_livraison() {
		return Mode_livraison;
	}
	public void setMode_livraison(String mode_livraison) {
		Mode_livraison = mode_livraison;
	}
	public String getStatut_livraison() {
		return Statut_livraison;
	}
	public void setStatut_livraison(String statut_livraison) {
		Statut_livraison = statut_livraison;
	}

}
