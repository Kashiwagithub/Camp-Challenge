/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package databace_java;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import java.text.SimpleDateFormat;
/**
 *
 * @author Wataru
 */
public class kadai2 extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        Connection db_con = null;
        PreparedStatement db_st = null;
        //ResultSet db_data = null;
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        
        try
            {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            db_con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Challenge_db","Kashiwagi","****");
            
            //SQL 6,'田中角栄','0120-1234-4678','75','1918-5-4'
            db_st = db_con.prepareStatement("INSERT INTO profiles VALUES(?,?,?,?,?)");
            db_st.setInt(1,6); //ID
            db_st.setString(2,"田中角栄"); //名前
            db_st.setString(3,"0120-1234-4678"); //電話番号
            db_st.setInt(4,75); //年齢
            db_st.setDate(5,new java.sql.Date(sdf.parse("1918-05-04").getTime())); //生年月日
            int d = db_st.executeUpdate(); //データベースに書き込んだ件数
                if(d != 0){    
                    out.println("データベースに"+d+"件の書き込みを成功しました。");    
                }
            //db_data.close();
            db_st.close();
            db_con.close();
            } catch (SQLException e_sql) {
                out.println("接続時にエラーが発生しました："+e_sql.toString());
            } catch (Exception e) {
                out.println("接続時にエラーが発生しました："+e.toString()+" "+e.getMessage());
            } finally {
                if (db_con != null){
                    try {
                        db_con.close();
                    } catch (Exception e_con) {
                        System.out.println(e_con.getMessage());
                    }
                }
                
            }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
