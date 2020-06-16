<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Listar.aspx.cs" Inherits="Canil.Listar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <%--FONTAWESOME--%>
    <link rel="stylesheet" type="text/css"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">

    <%--JQUERY--%>
    <script
        src="https://code.jquery.com/jquery-1.12.4.min.js"
        integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ="
        crossorigin="anonymous"></script>

    <%--RECURSOS DA DATATABLE--%>
    <link rel="stylesheet" type="text/css"
        href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css" />

    <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js">
    </script>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="text-center text-primary">
        <h2>Listagem de Clientes</h2>
    </div>
    <p>
        <asp:Repeater ID="rptClientes" runat="server">
            <HeaderTemplate>
                <table class="table table-hover" id="sisDataTable">
                    <thead>
                        <tr>
                            <td><strong>ID</strong></td>
                            <td><strong>Nome</strong></td>
                            <td><strong>Dono</strong></td>
                            <td><strong>Funções</strong></td>
                        </tr>
                    </thead>
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                    <td>
                        <%# DataBinder.Eval(Container.DataItem, "cod_cao") %>
                    </td>
                    <td>
                        <%# DataBinder.Eval(Container.DataItem, "nom_cao") %>
                    </td>
                    <td>
                        <%# DataBinder.Eval(Container.DataItem, "nom_dono_cao") %>
                    </td>
                    <td>
                        <asp:LinkButton ID="lnkDetalhes" runat="server">
                            <a href='<%# Eval("cod_cao", "detalhes.aspx?id={0}") %>'>
                                <span class="fas fa-eye"></span></a>
                        </asp:LinkButton>

                        <asp:LinkButton ID="lnkEditar" runat="server">
                            <a href='<%# Eval("cod_cao", "editar.aspx?id={0}") %>'>
                                <span class="fas fa-pencil-alt"></span></a>
                        </asp:LinkButton>

                        <asp:LinkButton ID="lnkRemover" runat="server">
                            <a href='<%# Eval("cod_cao", "remover.aspx?id={0}") %>'>
                                <span class="fas fa-trash-alt"></span></a>
                        </asp:LinkButton>
                    </td>
                </tr>
            </ItemTemplate>
            <FooterTemplate>
                </table>
            </FooterTemplate>       
        </asp:Repeater>
    </p>
    <div class="row">
        <div class="col-md-12">
            <asp:Label runat="server" Text="" ID="lblMsg"></asp:Label>
        </div>
    </div>


    <script>
        $('#sisDataTable').dataTable({
            "language": {
                "url": "https://cdn.datatables.net/plug-ins/1.10.20/i18n/Portuguese-Brasil.json"
            }
        });
    </script>

</asp:Content>
