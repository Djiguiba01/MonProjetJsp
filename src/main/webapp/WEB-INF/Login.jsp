<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>

<style>
    body{
  background: url('bare.jpg');
    background-size: cover;
    background-repeat: no-repeat;
    font-family: Arial, Helvetica, sans-serif;

}
.contener{
  max-width: 380px; 
  margin: auto;
  margin-top: 6px;
  
  background-color: rgb(180, 155, 155);
  text-align: center;
  border-radius:20px;
  padding:10px;
  padding-bottom: 25px;
  color: #fff;
  box-sizing: border-box;

}
h1{
    color:#fff ;
    text-align: center;
    text-transform: capitalize;
    font-weight: bold;

}
input{
    width: 300px;
    margin: 10px 0;
    outline: none;
    background-color: transparent;
    color: #fff;
    padding: 10px 6px;
    font-size: 18px;
    font-weight: bold;
box-sizing: border-box;
border: none;
    border-bottom: 2px #fff solid;


}
button{
    width: 80%;
    border-radius: 12px;
    padding: 10px;
    background-color: rgb(90, 120, 190);
    color: #fff;
    font-size: 20px;
    font-weight: bold;
    cursor: pointer;
    margin: 30px 10px 0px 10px;
}
a{
   padding: 10px;
   text-decoration: none;
}
</style>
<script>
    //Activer Premier champ automatiquement
    function init(){
        document.suivant.nom.focus();
    }

</script>
</head>
<body onload="init()">
    <form name="suivant" action="Accueil.jsp" method="post">
   <div class="contener">
    <h1>Cr�er votre compte</h1>
    <input type="text" name="pseudo" placeholder="Entrez votre pseudo" > <br>
    <input type="password" name="password" placeholder="Entrez votre mot de passe" > <br>
    <button>Se connecter</button><br><br>
    <span>Vous n'avez pas de compte :<a href="Inscription.html"/>S'inscrire</a></span>
   </div> 
</form>
</body>
</html>