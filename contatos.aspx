<%@ Page Title="" Language="C#" MasterPageFile="~/SitePage.Master" AutoEventWireup="true" CodeBehind="contatos.aspx.cs" Inherits="ProjetoFinal.contatos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
       <p>
        <asp:Label ID="Label1" runat="server" Text="Nome:" BackColor="#66CCFF" BorderColor="Black" BorderStyle="Double"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" BackColor="#CCFFFF" Width="143px"></asp:TextBox>
      </p>
          <p>
        <asp:Label ID="Label4" runat="server" Text="Email:" BackColor="#66CCFF" BorderColor="Black" BorderStyle="Double"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server" BackColor="#CCFFFF" Width="140px"></asp:TextBox>
      </p>
          <p>
        <asp:Label ID="Label2" runat="server" Text="Assunto:" BackColor="#66CCFF" BorderColor="Black" BorderStyle="Double"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" BackColor="#CCFFFF"></asp:TextBox>
      </p>
          <p>
        <asp:Label ID="Label3" runat="server" Text="Mensagem:" BackColor="#66CCFF" BorderColor="Black" BorderStyle="Double"></asp:Label>
              <asp:TextBox ID="TextBox3" runat="server" multiline BackColor="#99CCFF" BorderColor="Black" BorderStyle="Double" TextMode="MultiLine"></asp:TextBox>
            <p>  <asp:Button ID="Button1" runat="server" Text="Enviar" /></p> 
     
    </form>
</asp:Content>
