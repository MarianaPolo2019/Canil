<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Editar.aspx.cs" Inherits="Canil.Editar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="text-center text-primary">Editar Pet</div>
    <div class="container">
        <div class="row">
            <div class="col-md-14">
                <label>ID:</label>
                <asp:TextBox ID="txtID" runat="server" Enabled="false" CssClass="form-control">
                </asp:TextBox>
            </div>
        </div>
        <div class="row" style="margin-top:15px;">
        <div class="col-md-4">
            <label>Nome: </label>
            <asp:RequiredFieldValidator ID="rfvNome" ControlToValidate="txtNome" 
                ErrorMessage="*" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtNome" runat="server" MaxLength="200" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="col-md-4">
            <label>Idade: </label>
            <asp:TextBox ID="txtIdade" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="col-md-4">
            <label>Porte: </label>
            <asp:DropDownList ID="ddlPorte" runat="server" CssClass="form-control">
                <asp:ListItem Value="pequeno">Pequeno</asp:ListItem>
                <asp:ListItem Value="medio">Médio</asp:ListItem>
                <asp:ListItem Value="grande">Grande</asp:ListItem>
            </asp:DropDownList>
        </div>
    </div>
    <div class="row" style="margin-top:15px;">
        <div class="col-md-4">
            <label>Raça: </label>
            <asp:TextBox ID="txtRaca" runat="server" MaxLength="200" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="col-md-4">
            <label>Deficiência: </label>
            <asp:TextBox ID="txtDefici" runat="server" MaxLength="2000" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="col-md-4">
            <label>Doença: </label>
            <asp:TextBox ID="txtDoenca" runat="server" MaxLength="200" CssClass="form-control"></asp:TextBox>
        </div>
    </div>
    <div class="row" style="margin-top:15px;">
        <div class="col-md-6">
            <label>Agressivo:</label>
            <asp:DropDownList ID="ddlAgress" runat="server" CssClass="form-control">
                <asp:ListItem Value="S">Agressivo</asp:ListItem>
                <asp:ListItem Value="N">Dócil</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="col-md-6">
            <label>Passeio(frequência):</label>
            <asp:TextBox ID="txtPasseio" runat="server" MaxLength="200" CssClass="form-control"></asp:TextBox>
        </div>
    </div>
    <div class="row" style="margin-top:15px">
        <div class="col-md-3">
            <label>Nome do Dono:</label>
            <asp:RequiredFieldValidator ID="rfvNomDono" ControlToValidate="txtNomDono"
                ErrorMessage="*" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtNomDono" runat="server" MaxLength="200" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="col-md-3">
            <label>Data de Pagamento: </label>
            <asp:TextBox ID="txtData" placeholder="Dia/Mês/Ano" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
        </div>
        <div class="col-md-3">
            <label>Valor a Pagar: </label>
            <asp:TextBox ID="txtValor" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
        </div>
        <div class="col-md-3">
            <label>Forma de Pagamento: </label>
            <asp:TextBox Enabled="false" ID="txtFormaPag" runat="server" MaxLength="100" CssClass="form-control"></asp:TextBox>
        </div>
    </div>
    <div class="row" style="margin-top:15px;">
        <div class="col-md-12 text-center">
            <asp:Button ID="btnAlterar" CssClass="btn btn-primary" runat="server" Text="Alterar" OnClick="btnAlterar_Click"/>
            <asp:Label ID="lblResultado" runat="server"></asp:Label>
        </div>
    </div>
    </div>
</asp:Content>
