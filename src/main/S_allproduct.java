package main;

import dbpack.C_dbcn;
import util.Product;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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

        int p_id1;
        String p_nm1;
        String p_dsc1;
        String p_img1;
        Connection con;
        PreparedStatement pstmnt1;
        ResultSet rs1;
        List<Product> productList = new ArrayList<Product>();
        //PrintWriter out = response.getWriter();

        try {
            con = C_dbcn.dbcn();
            if (con != null) {
                //language=MySQL
                String qry1 = "SELECT P_ID,P_Name,P_Desc,P_Img FROM product ";
//
                //DataSet
                pstmnt1 = con.prepareStatement(qry1);
                rs1 = pstmnt1.executeQuery();
                while (rs1.next()) {
                    Product prdt = new Product();
                    prdt.setId(rs1.getInt(1));
                    prdt.setName(rs1.getString(2));
                    prdt.setDescription(rs1.getString(3));
                    prdt.setImage(rs1.getString(4));
                    productList.add(prdt);
//                    p_id1 = rs1.getInt(1);
//                    p_nm1 = rs1.getString(2);
//                    p_dsc1 = rs1.getString(3);
//                    p_img1 = rs1.getString(4);
                    request.setAttribute("prdtList", productList);
//                    request.setAttribute("pid1", p_id1);
//                    request.setAttribute("pnm1", p_nm1);
//                    request.setAttribute("pdc1", p_dsc1);
//                    request.setAttribute("pimg1", p_img1);
                }
                RequestDispatcher disptch = request.getRequestDispatcher("/allproducts.jsp");
                if (disptch != null) {
                    disptch.forward(request, response);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }


}

