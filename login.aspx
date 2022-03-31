<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="ProjetoFinal.logincad" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
      <title>Formulário de Login e Registro com HTML5 e CSS3</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0" /> 
  <link rel="stylesheet" type="text/css" href="css/logincad.css" />
    <style>
    #aviso-cookie {
    position: fixed;
    bottom: 0;
    left: 0;
    width: 100%;
    background-color:#4682B4;
    display: flex;
    height:60px;
    font-size:20px;
    align-items:center;
    border-radius: 5px;
}

    #aviso-cookie .text {
        width: 87%;
        margin-right: 3%;
        color: #fff;
        padding-left: 10px;
    }

    #aviso-cookie .button4 {
        display: flex;
        align-items: center;
        padding-right: 10px;
    }
        </style>



    <script>

                       let button = document.querySelector('#button')
                       let divAviso = document.querySelector('.aviso-cookie')

                       function button_onclick_Aceitar() {
                           document.getElementById("aviso-cookie").style.display = "none";
                           console.log('Estou Aqui');
                       }

                   </script>
</head>
<body>
    
    
  <div class="container" >
    <a class="links" id="paracadastro"></a>
    <a class="links" id="paralogin"></a>
     
    <div class="content">      
      <!--FORMULÁRIO DE LOGIN-->
      <div id="login">
        <form id="form1" runat="server">
          <h1>Login</h1> 
          <p> 
            <label for="tbEmail">Seu e-mail</label>            
              <!-- O onfocus="this.value=''" -->
              <asp:TextBox ID="tbEmail" Text="Digite Seu Email" runat="server" onfocus="this.value=''"></asp:TextBox>
          </p>
           
          <p> 
            <label for="tbSenha">Sua Senha</label>
            
              <asp:TextBox ID="tbSenha" runat="server" TextMode="Password"></asp:TextBox>
          </p>
                    
          <p> 
            <asp:Button ID="btnlogar" runat="server" Text="Logar" OnClick="btnlogar_Click" /> 
          </p>
           
          <p class="link">
            Ainda não tem conta?
            <a href="cadastro.aspx">Cadastre-se</a>
          </p>
        </form>
          <div id="aviso-cookie">
      <div class="text">
         <p>Para acessar o nosso site, você precisa acessar a política de cookies. Para acessar o nosso site, você precisa acessar a política de cookies. Para acessar o nosso site, você precisa acessar a política de cookies. </p>
      </div>
      <div class="button">
          <button id="Button4" onclick="button_onclick_Aceitar()">Aceitar </button>
      </div>

      </div>
      </div>
  
</body>
</html>
