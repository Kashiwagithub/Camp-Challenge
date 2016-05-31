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
public class kadai12 extends HttpServlet {

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
        request.setCharacterEncoding("UTF-8"); //文字コード定義
        String name = request.getParameter("searchname"); //検索フォーム
        String str_age = request.getParameter("searchage"); //検索フォーム
        String str_birthday = request.getParameter("searchbirth"); //検索フォーム
            
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            Connection db_con = null;
            PreparedStatement db_st = null;
            ResultSet db_data = null;
            
            try
            {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            db_con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Challenge_db","Kashiwagi","****");
            
            int age = 0; //
                if(!str_age.equals("")){ //str_ageが空白でない時にString型からInt型に変換
                    age=Integer.parseInt(str_age);
            }
            Date birthday = null;
                if(!str_birthday.equals("")){ //str_birthdayが空白でない時にString型からDate型に変換
                    birthday=new java.sql.Date(sdf.parse(str_birthday).getTime());
                }
            
            //SQL
            db_st = db_con.prepareStatement("SELECT * FROM profiles WHERE name =? OR age=? OR birthday=?");
            db_st.setString(1,name);
            db_st.setInt(2,age);
            db_st.setDate(3,birthday);
            db_data = db_st.executeQuery();
            while(db_data.next()){
                out.println(db_data.getInt("profilesID")+"<br>");
                out.println(db_data.getString("name")+"<br>");
                out.println(db_data.getString("tell")+"<br>");
                out.println(db_data.getInt("age")+"<br>");
                out.println(db_data.getString("birthday")+"<br>");
            }
            db_data.close();
            db_st.close();
            db_con.close();
            } catch (SQLException e_sql) {
                out.println("接続時にエラーが発生しました："+e_sql.toString());
            } catch (Exception e) {
                out.println("接続時にエラーが発生しました："+e.toString());
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
