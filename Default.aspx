<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Canil.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <%-- Fonte: https://bootsnipp.com/snippets/M57ae --%>
    <link href="style.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/jquery-3.0.0.min.js"></script>
</head>
<body>
    <div class="container">
        <div class="wrapper">
            <form name="Login_Form" class="form-signin" runat="server">
                <h3 class="form-signin-heading">Bem-Vind@!</h3>
                <div class="text text-center">
                    <asp:Label ID="lblMsg" runat="server" CssClass="text text-info"></asp:Label>
                </div>
                <hr class="colorgraph" />
                <br />
                <asp:TextBox runat="server" ID="txtUsuario" type="text" class="form-control"
                    name="username" placeholder="Usuário" required="" autofocus=""></asp:TextBox>

                <asp:TextBox runat="server" ID="txtSenha" type="password" class="form-control"
                    name="password" placeholder="Senha" required=""></asp:TextBox>

                <asp:Button runat="server" ID="btnLogin" class="btn btn-lg btn-primary btn-block"
                    Text="Acessar" name="Submit" value="Login" type="Submit" OnClick="btnLogin_Click" />
            </form>
        </div>
    </div>
</body>
</html>
