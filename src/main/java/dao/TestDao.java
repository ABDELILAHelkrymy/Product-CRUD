package dao;

import java.util.ArrayList;
import java.util.List;

import metier.entities.Produit;

public class TestDao {

	public static void main(String[] args) {
		ProduitDaoImpl dao = new ProduitDaoImpl();
		Produit p1 = dao.save(new Produit("HP 840", 2500, 45));
		Produit p2 = dao.save(new Produit("Lenovo T470", 2600, 30));
		
		
		System.out.println("Chercher des produits");
		
		List<Produit> produits = dao.produitParMC("%H%");
		for(Produit p:produits) {
			System.out.println();
		}
	}

}
