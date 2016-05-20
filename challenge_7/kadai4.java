/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package kadai3_4;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Wataru
 */
public class kadai4 extends HttpServlet {
    public class Battery{
        public String product_status; //フィールド
        public Integer battery_level; //フィールド
        public Battery(){} //コンストラクタの生成
        public Battery(String sta,int val){
        product_status=sta;
        battery_level=val;
        }
    public String getStatus(){
        return product_status;
    }
    public Integer getValue(){
        return battery_level;
        }
}
    public class Used_Battery extends Battery{ //Batteryクラスを継承
        public Used_Battery(String sta,int val){
        product_status=sta;
        battery_level=val;
        }
        public String ClearStatus(){
            return product_status;
        }
        public Integer ClearValue(){
            return battery_level;
    }
    }
        
            
            

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            Battery usedbattery; //インスタンスを扱う変数を宣言する
        usedbattery = new Used_Battery("",0);
            out.println("この電池は"+usedbattery.getStatus()+"です。<br>");
            out.println("残量は"+usedbattery.getValue()+"%です。");
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
