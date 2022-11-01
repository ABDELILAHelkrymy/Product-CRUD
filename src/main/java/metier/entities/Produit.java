package metier.entities;

import java.io.Serializable;

public class Produit implements Serializable {
	private long id;
	private String designiation;
	private double prix;
	private int quantite;
	
	public Produit() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Produit(String designiation, double prix, int quantite) {
		super();
		this.designiation = designiation;
		this.prix = prix;
		this.quantite = quantite;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getDesigniation() {
		return designiation;
	}

	public void setDesigniation(String designiation) {
		this.designiation = designiation;
	}

	public double getPrix() {
		return prix;
	}

	public void setPrix(double prix) {
		this.prix = prix;
	}

	public int getQuantite() {
		return quantite;
	}

	public void setQuantite(int quantite) {
		this.quantite = quantite;
	}

	@Override
	public String toString() {
		return "Produit [id=" + id + ", designiation=" + designiation + ", prix=" + prix + ", quantite=" + quantite
				+ "]";
	}
	
	
	
	

}
