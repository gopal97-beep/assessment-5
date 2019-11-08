package main;

import java.io.IOException;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class add
 */
@WebServlet("/add")
public class add extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static EntityManagerFactory entityManagerFactory;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public add() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		entityManagerFactory = HibernateOGMUtil.getEntityManagerFactory();

		EntityManager em = entityManagerFactory.createEntityManager();
		String id=request.getParameter("id");
		String name=request.getParameter("name");
		String desp=request.getParameter("desp");
		String price=request.getParameter("price");
		String quantity=request.getParameter("quantity");
		
		Item i=new Item();
		i.setId1(Integer.parseInt(id));
		i.setName(name);
		i.setDesp(desp);
		i.setPrice(Integer.parseInt(price));
		i.setQuantity(Integer.parseInt(quantity));
		em.getTransaction().begin();

		em.persist(i);

		em.getTransaction().commit();
 
		request.getRequestDispatcher("index.jsp").forward(request, response);;
		
		
		
	}

}
