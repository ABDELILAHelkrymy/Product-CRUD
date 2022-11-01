package web;

import java.io.IOException;
import java.util.List;

import org.apache.catalina.connector.Response;

import dao.IProduitDao;
import dao.ProduitDaoImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import metier.entities.Produit;

@WebServlet(name = "cs", urlPatterns = {"*.php"})
public class ControleurServlet extends HttpServlet{

	private IProduitDao metier;
	
	@Override
	public void init() throws ServletException {
		metier = new ProduitDaoImpl();
	}
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String path = request.getServletPath();
		if (path.equals("/index.php")) {
			request.getRequestDispatcher("produits.jsp").forward(request, response);
		}
		else if (path.equals("/chercher.php")) {
			String motCle = request.getParameter("motCle");
			ProduitModel model = new ProduitModel();
			model.setMotCle(motCle);
			List<Produit> produits = metier.produitParMC("%"+motCle+"%");
			model.setProduits(produits);
			request.setAttribute("model", model);
			request.getRequestDispatcher("produits.jsp").forward(request, response);
		} 
		else if (path.equals("/saisie.php")) {
			request.setAttribute("produit", new Produit());
			request.getRequestDispatcher("saisieProduit.jsp").forward(request, response);
		}
		else if (path.equals("/SaveProduit.php") && (request.getMethod().equals("POST"))) {
			String des = request.getParameter("designiation");
			double prix = Double.parseDouble(request.getParameter("prix"));
			int quantite = Integer.parseInt(request.getParameter("quantite"));
			Produit p = metier.save(new Produit(des, prix, quantite));
			request.setAttribute("produit", p);
			request.getRequestDispatcher("confirmation.jsp").forward(request, response);
		} 
		else if (path.equals("/supprimer.php")) {
			Long id = Long.parseLong(request.getParameter("id"));
			metier.deleteProduit(id);
//			request.getRequestDispatcher("produits.jsp").forward(request, response);
			response.sendRedirect("chercher.php?motCle=");
		}
		else if (path.equals("/modifier.php")) {
			Long id = Long.parseLong(request.getParameter("id"));
			Produit p = metier.getProduit(id);
			request.setAttribute("produit", p);
			request.getRequestDispatcher("editProduit.jsp").forward(request, response);
		}
		else if (path.equals("/UpdateProduit.php") && (request.getMethod().equals("POST"))) {
			Long id = Long.parseLong(request.getParameter("id"));
			String des = request.getParameter("designiation");
			double prix = Double.parseDouble(request.getParameter("prix"));
			int quantite = Integer.parseInt(request.getParameter("quantite"));
			Produit p = new Produit(des, prix, quantite);
			p.setId(id);
			metier.update(p);
			request.setAttribute("produit", p);
			request.getRequestDispatcher("confirmation.jsp").forward(request, response);
		} 
		else {
			response.sendError(Response.SC_NOT_FOUND);
		}
		
		
	}
	
	@Override
	protected void doPost(HttpServletRequest requeste, HttpServletResponse response) throws ServletException, IOException {
		doGet(requeste, response);
	}
}






