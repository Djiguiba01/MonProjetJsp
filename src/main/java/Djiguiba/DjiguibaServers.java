package Djiguiba;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;


/**
 * Servlet implementation class DjiguibaServers
 */
public class DjiguibaServers extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DjiguibaServers() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	this.getServletContext().getRequestDispatcher("/WEB-INF/Inscrire.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 String nom = request.getParameter("nom");
		 String prenom = request.getParameter("prenom");
		 String pseudo = request.getParameter("pseudo");
		 String email = request.getParameter("email");
		 String password = request.getParameter("password");
		 String conpassword = request.getParameter("confirmpassword");
		 String erreur;
	 
		 HttpSession session = request.getSession();
		 
		 List<User> users =  (List)session.getAttribute("liste");
		 if(users == null)
		 {
			 users = new ArrayList<User>();
		 }
		 User utilisateur = new User(nom, prenom, pseudo, email, password);
		
		users.add(utilisateur);
		
		 request.setAttribute("nom", nom);
		 request.setAttribute("prenom", prenom);
		
		 
		session.setAttribute("liste", users);
		
		if(!"".equals(nom) && !"".equals(prenom) && !"".equals(pseudo) && !"".equals(email) && !"".equals(password) && !"".equals(conpassword) ) {
			
			if(password.equals(conpassword)) {
				request.getRequestDispatcher("/WEB-INF/Accueil.jsp").forward(request, response);
			}else {
				erreur="Mot de passe incorrect";
				request.getRequestDispatcher("/WEB-INF/Inscrire.jsp").forward(request, response);
			}
			
			
	
		}
		else {
			erreur="Veuillez remplir tout les champs";
			request.getRequestDispatcher("/WEB-INF/Inscrire.jsp").forward(request, response);

			
		}
		
	
		
	}
	}


