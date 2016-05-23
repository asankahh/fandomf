package main;

import dbpack.C_dbcn;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by siva_ on 5/23/2016.
 */
@WebServlet(name = "S_cart")
public class S_cart extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Connection con;
        PreparedStatement pstmnt;
        ResultSet rs = null;

        con = C_dbcn.dbcn();
        PrintWriter out = response.getWriter();
        String prdctid = request.getParameter("bt1");
        String qry2 = "SELECT P_ID,P_Name,P_Desc,P_Img, FROM product WHERE P_ID='"+prdctid+"' ";

        try{
            if (con == null) throw new AssertionError();
            pstmnt= con.prepareStatement(qry2);
            rs= pstmnt.executeQuery();
        }catch (SQLException sqlex){
            sqlex.printStackTrace();
        }
        request.setAttribute("cart",rs);
//        request.setAttribute("tst",tst);
        RequestDispatcher disptch = request.getRequestDispatcher("cart.jsp");
        if (disptch != null) {
            disptch.forward(request, response);
        }
    }

}
