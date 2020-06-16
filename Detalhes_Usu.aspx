<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Detalhes_Usu.aspx.cs" Inherits="Canil.Detalhes_Usu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="text-center text-primary">
        <h2>Detalhes de Usuários</h2>
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
            <asp:TextBox  Enabled="false" ID="txtLogin" runat="server" MaxLength="10" CssClass="form-control"></asp:TextBox>
        </div>

        <div class="col-md-2">
            <label>Senha:</label>
            <asp:TextBox Enabled="false" ID="txtSenha" runat="server" MaxLength="8" TextMode="Password" CssClass="form-control"></asp:TextBox>
        </div>

        <div class="col-md-3">
            <label>Nível:</label>
            <asp:DropDownList Enabled="false" ID="ddlNivel" runat="server" CssClass="form-control">
                <asp:ListItem Selected="True" Value=""></asp:ListItem>
                <asp:ListItem Value="A">Administrador</asp:ListItem>
                <asp:ListItem Value="O">Operador</asp:ListItem>
            </asp:DropDownList>
        </div>
    </div>

    <div class="row" style="margin-top:15px">
        <div class="col-md-12 text-right">
            <asp:LinkButton ID="lnkVoltar" runat="server" href="Usuarios.aspx"></asp:LinkButton>
        </div>
    </div>
</asp:Content>
