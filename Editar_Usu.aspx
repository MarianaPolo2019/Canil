<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Editar_Usu.aspx.cs" Inherits="Canil.Editar_Usu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="text-center text-primary">
        <h2>Cadastro de Usuários</h2>
    </div>

    <div class="row" style="margin-top:15px">
        <div class="col-md-6">
            <label>ID:</label>
            <asp:TextBox Enabled="false" ID="txtID" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="col-md-6">
            <label>Nome:</label>
            <asp:TextBox Enabled="false" ID="txtNome" runat="server" MaxLength="50" CssClass="form-control"></asp:TextBox>
        </div>
    </div>

    <div class="row" style="margin-top:15px">
        <div class="col-md-7">
            <label>Login:</label>
            <asp:RequiredFieldValidator ID="rfvLogin" ControlToValidate="txtLogin"
                ErrorMessage="*" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtLogin" runat="server" MaxLength="10" CssClass="form-control"></asp:TextBox>
        </div>

        <div class="col-md-2">
            <label>Senha:</label>
            <asp:RequiredFieldValidator ID="rfvSenha" ControlToValidate="txtSenha"
                ErrorMessage="*" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtSenha" runat="server" MaxLength="8" TextMode="Password" CssClass="form-control"></asp:TextBox>
        </div>

        <div class="col-md-3">
            <label>Nível:</label>
            <asp:RequiredFieldValidator ID="rfvNivel" ControlToValidate="ddlNivel"
                ErrorMessage="*" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
            <asp:DropDownList ID="ddlNivel" runat="server" CssClass="form-control">
                <asp:ListItem Selected="True" Value=""></asp:ListItem>
                <asp:ListItem Value="A">Administrador</asp:ListItem>
                <asp:ListItem Value="O">Operador</asp:ListItem>
            </asp:DropDownList>
        </div>
    </div>

    <div class="row" style="margin-top:15px">
        <div class="col-md-12 text-right">
            <asp:Button ID="btnAlterar" CssClass="btn btn-primary" runat="server" Text="Alterar" OnClick="btnAlterar_Click" />
        </div>
    </div>

    <div class="row" style="margin-top:15px">
        <div class="col-md-12 text-right">
            <asp:Label ID="lblResultado" CssClass="text text-danger" runat="server"></asp:Label>
        </div>
    </div>
</asp:Content>
