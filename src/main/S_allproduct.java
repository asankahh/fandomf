package main;

import dbpack.C_dbcn;
import util.Product;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.jsp.jstl.sql.Result;
import javax.servlet.jsp.jstl.sql.ResultSupport;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by asank on 5/1/2016.
 */
@WebServlet(name = "S_allproduct")
public class S_allproduct extends HttpServlet {


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        Connection con;
        PreparedStatement pstmnt;
        ResultSet rs;

        PrintWriter out = response.getWriter();

        try {
            con = C_dbcn.dbcn();
            if (con != null) {
                //language=MySQL
                String qry1 = "SELECT P_ID,P_Name,P_Desc,P_Img FROM product ";

                //DataSet
                pstmnt= con.prepareStatement(qry1);
                rs= pstmnt.executeQuery();
                request.setAttribute("rs",rs);
                RequestDispatcher disptch = request.getRequestDispatcher("allproducts.jsp");
                if (disptch != null) {
                    disptch.forward(request, response);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}

