<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="TesteBD.aspx.cs" Inherits="Canil.TesteBD" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="text-center">
        <asp:Button  id="btnTestar" runat="server" CssClass="btn btn-primary" Text="Testar Conexão com o banco de dados" OnClick="btnTestar_Click"/>
        <br />
        <asp:Label id="lblResultado" runat="server"></asp:Label>
    </div>
</asp:Content>
