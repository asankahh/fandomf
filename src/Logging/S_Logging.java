package Logging;

import dbpack.C_dbcn;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.sql.Connection;
import java.sql.Statement;

import static com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type.Int;

/**
 * Created by asank on 4/29/2016.
 */
@WebServlet(name = "Logging.S_Logging", urlPatterns = "/log")
public class S_Logging extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String un = request.getParameter("un");
        String pw = request.getParameter("pw");

        PrintWriter out = response.getWriter();
        int dbid = 0;
        String dbun = "";
        String dbpw = "";
        String hid;

        Connection con;
        PreparedStatement stmt;
        ResultSet rs;

        try {
            con = C_dbcn.dbcn();
            if (con != null) {
                String qry = "SELECT * FROM logindetails";
                stmt = con.prepareStatement(qry);
                rs = stmt.executeQuery();
                while (rs.next()){
                    dbid = rs.getInt("Reg_ID");
                    dbun = rs.getString("Usr_Nm");
                    dbpw = rs.getString("Pword");
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }


        if(dbid != 0){
            if(un != null){
                if(pw!=null){
                    if(un.equals(dbun)){
                        if(pw.equals(dbpw)){
                            hid="hidden";
                            //session.setAttribute("user",dbun);
                            request.setAttribute("unbc",dbun);
                            request.setAttribute("hdn",hid);
                            RequestDispatcher dispatch = request.getRequestDispatcher("/index.jsp");
                            if(dispatch!=null){
                                dispatch.forward(request,response);
                            }
                        }
                        else {

                            out.println("Wrong Password");

                        }
                    }else {

                        out.println("Wrong Username");

                    }
                }else {

                    out.println("Type your Password");

                }
            }else {

                out.println("Type Your Username");

            }
        }else{
            out.println("Database Connection Fail");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


    }
}
