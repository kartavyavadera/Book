<%-- 
    Document   : InsertAuthor
    Created on : 2 Nov, 2020, 7:35:43 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Author insertion</title>
    </head>
    <body>
        <% 
            Class.forName("com.mysql.jdbc.Driver");
            Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/bookdb", "root", "");
            Statement st=cn.createStatement();
            
            String a_name=request.getParameter("a_name");
            String a_mobile=request.getParameter("a_mobile");
            String a_address=request.getParameter("a_address");
            String a_aadharcardno=request.getParameter("a_aadharcardno");
            
            String qry="insert into author(a_name,a_mobile,a_address,a_aadharcardno) values('"+a_name+"' , '"+a_mobile+"' , '"+a_address+"' , '"+a_aadharcardno+"')";
            int no=st.executeUpdate(qry);
            
            if(no>0)
            {
                RequestDispatcher disp=request.getRequestDispatcher("ViewAllPublisher.jsp");
                disp.forward(request, response);
            }
            else
            {
                out.println("An error occured!!");
            }
        %>
        
    </body>
</html>
