<%-- 
    Document   : UpdateAuthordata
    Created on : 2 Nov, 2020, 4:05:54 PM
    Author     : Admin
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Author Data</title>
    </head>
    <body>
    <center>                
        <form action="UpdateAuthorServlet">
        <table border="5" >            
            <tbody>
                 <tr>                    
                    <td>ID :</td>
                    <td><input type="text" name="a_id" value="<%=request.getParameter("id")%>" read only /></td>
                    
                </tr>
                <tr>                    
                    <td>Enter Author Name :</td>
                    <td><input type="text" name="a_name" value="<%=request.getParameter("name")%>" /></td>
                    
                </tr>
                <tr>
                    <td>Enter Author mobile :</td>
                    <td><input type="number" name="a_mobile" value="<%=request.getParameter("mobile")%>" /></td>
                </tr>
                <tr>
                    <td>Enter Author Address :</td>
                    <td><input type="text" name="a_address" value="<%=request.getParameter("address")%>" /></td>
                </tr>
                <tr>
                    <td>Enter Author Aadhar card No : </td>
                    <td><input type="number" name="a_aadharcardno" value="<%=request.getParameter("aadhar")%>" /></td>
                </tr>
                <tr>
                    <td colspan="2" align="center"><input type="submit" value="Update" /></td>
                </tr>
            </tbody>
        </table>                                                   
        </form>
    </center>
    </body>
</html>
