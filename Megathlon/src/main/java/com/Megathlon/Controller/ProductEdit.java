package com.Megathlon.Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Megathlon.Beans.Product;

/**
 * Servlet implementation class ProductEdit
 */
public class ProductEdit extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ProductEdit() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO doGet untuk selected edit product
		response.setContentType("text/html;charset=UTF-8");
		
		
		
		try (PrintWriter out = response.getWriter()) {
			out.println("<!DOCTYPE html>");
			out.println("<html>");
			out.println("<head>");
			out.println("<title>Servlet StudentServlet</title>");
			out.println("</head>");
			out.println("<body>");

			ArrayList<Product> ProductList = new ArrayList<>();

			try {
				int productID = Integer.parseInt(request.getParameter("productID"));
				// Connect to database
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/megathlon?useSSL=false",
						"root", "Penangfreeschool1!");

				// Run query
				String query = "SELECT * FROM product WHERE status = 0 AND productID = " + productID;

				PreparedStatement preparedStatement = con.prepareStatement(query);

				ResultSet rs = preparedStatement.executeQuery();

				while (rs.next()) {
					Product product = new Product();
					product.setProductID(rs.getInt("productId"));
					product.setProductName(rs.getString("productName"));
					product.setDescription(rs.getString("description"));
					product.setPrice(rs.getDouble("price"));
					product.setQuantity(rs.getInt("quantity"));
					product.setBrand(rs.getString("brand"));
					product.setSupplier(rs.getString("supplier"));
					product.setProductImage(rs.getString("productImage"));
					ProductList.add(product);
				}

			} catch (Exception e) {
				e.printStackTrace();
			}

			request.setAttribute("ProductList", ProductList);
			RequestDispatcher rd = request.getRequestDispatcher("ProductEdit.jsp");
			rd.forward(request, response);

			out.println("</body>");
			out.println("</html>");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		try (PrintWriter out = response.getWriter()) {
			out.println("<!DOCTYPE html>");
			out.println("<html>");
			out.println("<head>");
			out.println("<title>Servlet StudentServlet</title>");
			out.println("</head>");
			out.println("<body>");

			ArrayList<Product> ProductList = new ArrayList<>();

			int productID = Integer.parseInt(request.getParameter("productID"));
			
			String productName = request.getParameter("productName").trim();
			String desc = request.getParameter("description").trim();
			double price = Double.parseDouble(request.getParameter("price"));
			int quantity = Integer.parseInt(request.getParameter("quantity"));
			String brand = request.getParameter("brand").trim();
			String supplier = request.getParameter("supplier").trim();
			String productImage = request.getParameter("productImage");



			try {

				// Connect to database
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/megathlon?useSSL=false",
						"root", "Penangfreeschool1!");

				// Run query
				String query = "UPDATE " + "product "
						+ "SET productName = ?, description = ?, price = ?, quantity = ?, brand = ?, supplier = ? "
						+ "WHERE productID = ?";

				PreparedStatement preparedStatement = con.prepareStatement(query);
				preparedStatement.setString(1, productName);
				preparedStatement.setString(2, desc);
				preparedStatement.setDouble(3, price);
				preparedStatement.setInt(4, quantity);
				preparedStatement.setString(5, brand);
				preparedStatement.setString(6, supplier);
				preparedStatement.setInt(7, productID);
				preparedStatement.executeUpdate();

			} catch (Exception e) {
				e.printStackTrace();
			}

			request.setAttribute("ProductList", ProductList);
			response.sendRedirect("/Megathlon/ProductList");

			out.println("</body>");
			out.println("</html>");
		}
	}

}
