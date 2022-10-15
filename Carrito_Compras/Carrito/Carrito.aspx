<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="Carrito.aspx.cs" Inherits="Carrito.Carrito" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-lg">
        <asp:GridView ID="grdCarrito" runat="server" CssClass="table table-success table-striped table-responsive"></asp:GridView>
        <div class="container-lg">

            <asp:Label ID="lblTotal" runat="server" CssClass="display-4">Total: $</asp:Label>
            <asp:Label ID="lblImporte" runat="server" CssClass="display-4"></asp:Label>

        </div>
    </div>
</asp:Content>
