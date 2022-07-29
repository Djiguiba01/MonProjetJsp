<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="java.util.List" %>
<%@page import="java.util.ArrayList" %>
<%@page import="Djiguiba.User" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Accueil</title>
    
       <style>
        body{
  background: url('bare.jpg');
    background-size: cover;
    background-repeat: no-repeat;
    font-family: Arial, Helvetica, sans-serif;

}
.menu{
width: 100%;
height: 100px;
background-color: rgb(107, 95, 114);

}
a{
    font-family: Arial, Helvetica, sans-serif;
    float: right;
    margin-top: 70px;
   text-decoration: none;
    font-size: 25px;
   background-color: rgb(73, 117, 117);

}
th{
background-color: blue;
}
table{
border-collapse:collapse;
}
th,td{

border : 2px solid black;
}
    </style>
    
        </head>
    
   <body>
    
    <div class="menu" >
       <form action="DjiguibaServlet2" method="post" >
       <input type="submit" value="Deconnection">
 </form>
    </div>

    
   <center> 
    <h1>Bienvenue ${nom} ${prenom}</h1>
    </center>

    
<center>

    <table>
    	<thead>
    		<tr>
    		
    		<th>Nom</th>
    		 <th>Prenom</th> 
    		 <th>Pseudo</th>
    		  <th>Email</th> 
    		</tr>
    	</thead>
    	<tbody>
    		<%
    			List<User> users = (ArrayList <User>)session.getAttribute("liste");
    		for(User use : users)
    			
    		{
    		%>
    		<tr>
    		
    			<td> <% out.print(use.getNom()); %></td>
    			<td> <% out.print(use.getPrenom()); %> </td>
    			<td> <% out.print(use.getPseudo()); %> </td>
    			<td> <% out.print(use.getEmail()); %> </td>
    		
    		</tr>
    		
    		<%

    		}	
			%>
    	
    	</tbody>
    	
    	
    	
    </table>
</center>
    
    </body>
</html>
 

