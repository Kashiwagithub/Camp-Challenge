/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package JSPServlet2;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.*;

/**
 *
 * @author Wataru
 */
public class kadai6 extends HttpServlet {
    public static ArrayList<String>Profile(String id){
        ArrayList<String>array1=
            new ArrayList<String>();
        array1.add("名前 Sakurai Go<br>"); //名前
        array1.add("生年月日 1980年5月5日<br>"); //生年月日
        array1.add("住所 東京都港区六本木<br>"); //住所
        
        ArrayList<String>array2=
            new ArrayList<String>();
        array2.add("名前 Tadokoro Koji<br>"); //名前
        array2.add("生年月日 1980年8月10日<br>"); //生年月日
        array2.add("住所 東京都世田谷区北沢<br>"); //住所
        
        ArrayList<String>array3=
            new ArrayList<String>();
        array3.add("名前 Katsuragi<br>"); //名前
        array3.add("生年月日 1980年10月10日<br>"); //生年月日
        array3.add("住所 東京都新宿区高田馬場<br>"); //住所
    
    HashMap<String,ArrayList<String>>hmap=new HashMap<String,ArrayList<String>>();
    hmap.put("0",array1);
    hmap.put("1",array2);
    hmap.put("2",array3);
    
        for(String ID:hmap.keySet()){
            if(id.equals(ID)){ //idという箱にメモリ先頭番地が入っており、メモリに格納されている情報を比較する　数値そのものを比較するわけではない
            return hmap.get(ID); //keyに対応するValueをgetで取り出して、returnで返します。
        }
    }
    return null;
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
            ArrayList<String> pr=Profile("1"); //key(ID)
            for(int i=0;i<=pr.size(); i++){ //Index1~3まで取り出し
                out.println(pr.get(i)); //i番目の要素取り出し
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
