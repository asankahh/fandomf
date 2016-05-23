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

import static java.lang.System.out;

/**
 * Created by illusionist AHH on 5/22/2016.
 */
@WebServlet(name = "S_productView")
public class S_productView extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Connection con;
        PreparedStatement pstmnt;
        ResultSet rs = null;

        con = C_dbcn.dbcn();
        PrintWriter out = response.getWriter();
        String prdctid = request.getParameter("bt");
        String qry1 = "SELECT P_ID,P_Name,P_Desc,P_Img,P_Price FROM product WHERE P_ID='"+prdctid+"' ";

        try{
            assert con != null;
            pstmnt= con.prepareStatement(qry1);
            rs= pstmnt.executeQuery();

        }catch (SQLException sqlex){
            sqlex.printStackTrace();
        }



        request.setAttribute("prdct",rs);
//        request.setAttribute("tst",tst);
        RequestDispatcher disptch = request.getRequestDispatcher("productview.jsp");
        if (disptch != null) {
            disptch.forward(request, response);
        }

    }
}
