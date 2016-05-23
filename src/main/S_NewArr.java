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
 * Created by illusionist AHH on 5/23/2016.
 */
@WebServlet(name = "S_NewArr")
public class S_NewArr extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {



    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Connection con;
        PreparedStatement pstmnt1;
        ResultSet rs1;

        PrintWriter out = response.getWriter();

        try {
            con = C_dbcn.dbcn();
            if (con != null) {
                //language=MySQL
                String qry = "SELECT P_ID,P_Name,P_Desc,P_Img FROM product ORDER BY P_add_date DESC LIMIT 5";
String test = "test";
                //DataSet
//                pstmnt1= con.prepareStatement(qry);
//                rs1= pstmnt1.executeQuery();
//                if(rs1!=null){
//                    request.setAttribute("rs1",rs1);
//                }else {
//                    out.print("RS IS EMPTY");
//                }
                request.setAttribute("test",test);

                RequestDispatcher disptch = request.getRequestDispatcher("index.jsp");
                if (disptch != null) {
                    disptch.forward(request, response);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
