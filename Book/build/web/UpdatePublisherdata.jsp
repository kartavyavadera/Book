<%-- 
    Document   : UpdatePublisherdata
    Created on : 2 Nov, 2020, 5:10:23 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Publisher Details</title>
    </head>
    <body>
        <center>                
        <form action="UpdatePublisherServlet">
        <table border="5" >            
            <tbody>
                 <tr>                    
                    <td>ID :</td>
                    <td><input type="text" name="p_id" value="<%=request.getParameter("id")%>" read only /></td>
                    
                </tr>
                <tr>                    
                    <td>Enter Publisher Name :</td>
                    <td><input type="text" name="p_name" value="<%=request.getParameter("name")%>" /></td>
                    
                </tr>
                <tr>
                    <td>Enter Publisher mobile :</td>
                    <td><input type="number" name="p_mobile" value="<%=request.getParameter("mobile")%>" /></td>
                </tr>
                <tr>
                    <td>Enter Publisher Address :</td>
                    <td><input type="text" name="p_address" value="<%=request.getParameter("address")%>" /></td>
                </tr>
                <tr>
                    <td>Enter Author Aadhar card No : </td>
                    <td><input type="number" name="p_aadharcardno" value="<%=request.getParameter("aadhar")%>" /></td>
                </tr>
                <tr>
                    <td colspan="2" align="center"><input type="submit" value="Update" /></td>
                </tr>
            </tbody>
        </table>                                                   
        </form>
    </body>
</html>
