<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="Carrito.aspx.cs" Inherits="Carrito.Carrito" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-lg">
        <asp:GridView ID="grdCarrito" runat="server" CssClass="table table-success table-striped"></asp:GridView>
        <div cssclass="col-md-2">
            <asp:Label ID="lblTotal" runat="server" CssClass="display-3">Total: </asp:Label>
            <asp:Label ID="lblImporte" runat="server" CssClass="display-3"></asp:Label>
        </div>
    </div>
</asp:Content>
