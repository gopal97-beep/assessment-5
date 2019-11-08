package main;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class delete
 */
@WebServlet("/delete")
public class delete extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static EntityManagerFactory entityManagerFactory;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public delete() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		
		entityManagerFactory = HibernateOGMUtil.getEntityManagerFactory();

		EntityManager em = entityManagerFactory.createEntityManager();
		
		
		
		
		
		
		
	
		String id2=request.getParameter("id1");
		int id1=Integer.parseInt(id2);
		List<Item> si=new ArrayList<>();
		si=em.createQuery("select s from Item s where s.id1 = :id", Item.class)
				 .setParameter("id", id1).getResultList();
				 
		
		
		em.getTransaction().begin();
  for(Item s:si) {
		em.remove(s);
  }
		em.getTransaction().commit();
	

	List <Item> s1=new ArrayList<>();
	s1=em.createQuery("select s from Item s").getResultList();
	request.setAttribute("Item",s1);
	
	request.getRequestDispatcher("table.jsp").forward(request, response);
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
