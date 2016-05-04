package main;

import dbpack.C_dbcn;

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
 * Created by asank on 5/4/2016.
 */
@WebServlet(name = "S_signup")
public class S_signup extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        String dp = request.getParameter("dp");
        String fn = request.getParameter("fn");
        String ln = request.getParameter("ln");
        String pw = request.getParameter("pw");
        String pwcnf = request.getParameter("pwcnf");
        String em = request.getParameter("em");
        String nws  = request.getParameter("nws");
        String yr = request.getParameter("yr");
        String mnth = request.getParameter("mnth");
        String dt = request.getParameter("dt");
        String dob = yr+"-"+mnth+"-"+dt;
        String ad1 = request.getParameter("ad1");
        String ad2 = request.getParameter("ad2");
        String cty = request.getParameter("cty");
        String pcd = request.getParameter("pcd");
        String gndr = request.getParameter("gndr");
        String tph = request.getParameter("tph");
        String tpm = request.getParameter("tpm");
        String msg;

        try {
            if(pw.equals(pwcnf)){
                Connection con = C_dbcn.dbcn();
                assert con != null;
                //language=MySQL
                String qry = "INSERT INTO cust_info (Cus_FN,Cus_LN,Cus_Add1,Cus_Add2,Cus_City,Cus_Postal_Code,Cus_DOB,Cus_Gender,Cus_Img,Cus_Email,Cus_Sub,Cus_tph,Cus_tpm) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?) ";
                PreparedStatement pst = con.prepareStatement(qry);
                pst.setString(1,fn);
                pst.setString(2,ln);
                pst.setString(3,ad1);
                pst.setString(4,ad2);
                pst.setString(5,cty);
                pst.setString(6,pcd);
                pst.setString(7,dob);
                pst.setString(8,gndr);
                pst.setString(9,dp);
                pst.setString(10,em);;
                pst.setString(11,nws);
                pst.setString(12,tph);
                pst.setString(13,tpm);
                int cnfrm = pst.executeUpdate();
                if(cnfrm != 0){
                    msg = "Data Submitted successfully. Go to your email and follow the directions";
                }else {
                    msg = "F";
                }
            }else {
                msg="password fields are not matched";
            }
            request.setAttribute("message",msg);
            request.getRequestDispatcher("/signup.jsp").forward(request,response);

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {



    }
}
