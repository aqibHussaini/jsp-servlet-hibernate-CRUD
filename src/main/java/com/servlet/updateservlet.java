package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.Entities.Contact;
import com.helper.SessionFactroyProvider;

/**
 * Servlet implementation class updateservlet
 */
public class updateservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public updateservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try
		{
			Thread.sleep(1000);
		}
		catch (Exception e) {
			// TODO: handle exception
		}
		// TODO Auto-generated method stub
		doGet(request, response);
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String facebookid = request.getParameter("facebookid");
		String instaid = request.getParameter("instaid");
		String twitter = request.getParameter("twitter");
		String country = request.getParameter("country");
		String province = request.getParameter("province");
		String city = request.getParameter("city");
		String about = request.getParameter("about");
		HttpSession myHttpSession=request.getSession();
		int id=Integer.parseInt(""+myHttpSession.getAttribute("id"));
			// fetching data from form
			Contact contact = new Contact();
			contact.setName(name);
			contact.setId(id);
			contact.setEmail(email);
			contact.setPhone(phone);
			contact.setFacebookid(facebookid);
			contact.setInstaid(instaid);
			contact.setTwitterid(twitter);
			contact.setCounrty(country);
			contact.setProvince(province);
			contact.setCity(city);
			contact.setAbout(about);
			// save data in db it
			SessionFactory factory = SessionFactroyProvider.getSessionFactory();
			Session session = factory.openSession();
			Transaction transaction = session.beginTransaction();
			session.update(contact);
			transaction.commit();
			session.close();
			response.getWriter().println("contact is updated"+contact);
	}

}
