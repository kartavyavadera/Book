<%-- 
    Document   : ViewAllPublisher
    Created on : 2 Nov, 2020, 4:59:19 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Publisher Records</title>
    </head>
    <body>
        <center>
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/bookdb", "root", "");
            Statement st=cn.createStatement();
            String qry="select * from publisher";
            ResultSet rs=st.executeQuery(qry);
            
            
        %>
        
        <table border="1">
            <thead>
                <tr>
                    <th>Id</th>
                    <th>Name</th>
                    <th>Mobile</th>
                    <th>Address</th>
                    <th>addhar card</th>
                     <th>Update Record</th>
                      <th>Delete Record</th>
                </tr>
            </thead>
            <tbody>
               <% 
                while(rs.next())
                {
                    int id=rs.getInt(1);
                    String name=rs.getString(2);
                    String mobile=rs.getString(3);
                    String address=rs.getString(4);
                    String aadhar=rs.getString(5);                              
                

               %>
               
               <tr>
                   <td><%=id%></td>
                    <td><%=name%></td>
                     <td><%=mobile%></td>
                      <td><%=address%></td>
                       <td><%=aadhar%></td>
                   <td><a href="UpdatePublisherdata.jsp?id=<%=id%>&name=<%=name%>&mobile=<%=mobile%>&address=<%=address%>&aadhar=<%=aadhar%>">Update</a></td>
                   <td><a href="DeletePublisherServlet?id=<%=id%>">Delete</a></td>
                   
               </tr>
               
               <%   
                    }
               %>
            </tbody>
        </table>
            <br>
            <br>
            <form action="index.jsp">
                <input type="submit" value="Home"/>
            </form>
    </body>
</html>
