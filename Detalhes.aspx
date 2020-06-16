<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Detalhes.aspx.cs" Inherits="Canil.detalhes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="text-center text-primary">Detalhes do Pet</div>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <label>ID:</label>
                <asp:TextBox ID="txtID" runat="server" Enabled="false" CssClass="form-control">
                </asp:TextBox>
            </div>
        </div>
        <div class="row" style="margin-top:15px;">
        <div class="col-md-4">
            <label>Nome: </label>
            <asp:TextBox Enabled="false" ID="txtNome" runat="server" MaxLength="200" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="col-md-4">
            <label>Idade: </label>
            <asp:TextBox Enabled="false" ID="txtIdade" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="col-md-4">
            <label>Porte: </label>
            <asp:DropDownList Enabled="false" ID="ddlPorte" runat="server" CssClass="form-control">
                <asp:ListItem Value="pequeno">Pequeno</asp:ListItem>
                <asp:ListItem Value="medio">Médio</asp:ListItem>
                <asp:ListItem Value="grande">Grande</asp:ListItem>
            </asp:DropDownList>
        </div>
    </div>
    <div class="row" style="margin-top:15px;">
        <div class="col-md-4">
            <label>Raça: </label>
            <asp:TextBox Enabled="false" ID="txtRaca" runat="server" MaxLength="200" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="col-md-4">
            <label>Deficiência: </label>
            <asp:TextBox Enabled="false" ID="txtDefici" runat="server" MaxLength="2000" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="col-md-4">
            <label>Doença: </label>
            <asp:TextBox Enabled="false" ID="txtDoenca" runat="server" MaxLength="200" CssClass="form-control"></asp:TextBox>
        </div>
    </div>
    <div class="row" style="margin-top:15px;">
        <div class="col-md-6">
            <label>Agressivo:</label>
            <asp:DropDownList Enabled="false" ID="ddlAgress" runat="server" CssClass="form-control">
                <asp:ListItem Value="S">Agressivo</asp:ListItem>
                <asp:ListItem Value="N">Dócil</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="col-md-6">
            <label>Passeio(frequência):</label>
            <asp:TextBox Enabled="false" ID="txtPasseio" runat="server" MaxLength="200" CssClass="form-control"></asp:TextBox>
        </div>
    </div>
    <div class="row" style="margin-top:15px">
        <div class="col-md-3">
            <label>Nome do Dono:</label>
            <asp:TextBox Enabled="false" ID="txtNomDono" runat="server" MaxLength="200" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="col-md-3">
            <label>Data de Pagamento: </label>
            <asp:TextBox Enabled="false" ID="txtData" placeholder="Dia/Mês/Ano" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="col-md-3">
            <label>Valor a Pagar: </label>
            <asp:TextBox Enabled="false" ID="txtValor" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="col-md-3">
            <label>Forma de Pagamento: </label>
            <asp:TextBox Enabled="false" ID="txtFormaPag" runat="server" MaxLength="100" CssClass="form-control"></asp:TextBox>
        </div>
    </div>
    <div class="row" style="margin-top:15px;">
        <div class="col-md-12 text-center">
            <asp:LinkButton ID="btnVoltar" CssClass="btn btn-primary" runat="server" Text="Voltar" href="Listar.aspx"/>           
        </div>
    </div>
    </div>
</asp:Content>
