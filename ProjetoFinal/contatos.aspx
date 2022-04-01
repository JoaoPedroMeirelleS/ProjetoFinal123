<%@ Page Title="" Language="C#" MasterPageFile="~/SitePage.Master" AutoEventWireup="true" CodeBehind="contatos.aspx.cs" Inherits="ProjetoFinal.contatos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <script runat="server" language="C#">
     void Button1_Click(Object sender, EventArgs e)
      {
          string nome, email, assunto, mensagem;
          nome = nomebox.Text;
          email= emailbox.Text;
          assunto = assuntobox.Text;
          mensagem = mensagembox.Text;

      }

  </script>
    
    
    
    
    <form id="formcontatos" runat="server">
       <p>
        <asp:Label ID="Label1" runat="server" Text="Nome:" BackColor="#66CCFF" BorderColor="Black" BorderStyle="Double"></asp:Label>
        <asp:TextBox ID="nomebox" runat="server" BackColor="#CCFFFF" Width="143px"></asp:TextBox>
      </p>
          <p>
        <asp:Label ID="Label4" runat="server" Text="Email:" BackColor="#66CCFF" BorderColor="Black" BorderStyle="Double"></asp:Label>
        <asp:TextBox ID="emailbox" runat="server" BackColor="#CCFFFF" Width="140px"></asp:TextBox>
      </p>
          <p>
        <asp:Label ID="Label2" runat="server" Text="Assunto:" BackColor="#66CCFF" BorderColor="Black" BorderStyle="Double"></asp:Label>
        <asp:TextBox ID="assuntobox" runat="server" BackColor="#CCFFFF"></asp:TextBox>
      </p>
          <p>
        <asp:Label ID="Label3" runat="server" Text="Mensagem:" BackColor="#66CCFF" BorderColor="Black" BorderStyle="Double"></asp:Label>
              <asp:TextBox ID="mensagembox" runat="server"  BackColor="#99CCFF" BorderColor="Black" BorderStyle="Double" TextMode="MultiLine"></asp:TextBox>
              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [contatos] WHERE [email] = @email" InsertCommand="INSERT INTO [contatos] ([nome], [email], [mensagem], [assunto]) VALUES (@nome, @email, @mensagem, @assunto)" SelectCommand="SELECT [nome], [email], [mensagem], [assunto] FROM [contatos]" UpdateCommand="UPDATE [contatos] SET [nome] = @nome, [mensagem] = @mensagem, [assunto] = @assunto WHERE [email] = @email">
                  <DeleteParameters>
                      <asp:Parameter Name="email" Type="String" />
                  </DeleteParameters>
                  <InsertParameters>
                      <asp:Parameter Name="nome" Type="Int32" />
                      <asp:Parameter Name="email" Type="String" />
                      <asp:Parameter Name="mensagem" Type="String" />
                      <asp:Parameter Name="assunto" Type="String" />
                  </InsertParameters>
                  <UpdateParameters>
                      <asp:Parameter Name="nome" Type="Int32" />
                      <asp:Parameter Name="mensagem" Type="String" />
                      <asp:Parameter Name="assunto" Type="String" />
                      <asp:Parameter Name="email" Type="String" />
                  </UpdateParameters>
              </asp:SqlDataSource>
            <p>  <asp:Button ID="Button1" runat="server" Text="Enviar" OnClick="Button1_Click" /></p> 
     
    </form>
</asp:Content>
