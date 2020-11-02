<%-- 
    Document   : InsertPublisher
    Created on : 2 Nov, 2020, 4:53:30 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"  %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inserting Publisher Data</title>
    </head>
    <body>
        <% 
            Class.forName("com.mysql.jdbc.Driver");
            Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/bookdb", "root", "");
            Statement st=cn.createStatement();
            
            String p_name=request.getParameter("p_name");
            String p_mobile=request.getParameter("p_mobile");
            String p_address=request.getParameter("p_address");
            String p_aadharcardno=request.getParameter("p_aadharcardno");
            
            String qry="insert into publisher(p_name,p_mobile,p_address,p_aadharcardno) values('"+p_name+"' , '"+p_mobile+"' , '"+p_address+"' , '"+p_aadharcardno+"')";
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
