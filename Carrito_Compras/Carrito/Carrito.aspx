<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="Carrito.aspx.cs" Inherits="Carrito.Carrito" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="grdCarrito" runat="server" CssClass="table"></asp:GridView>
    <div CssClass="col-md-2">
        <asp:Label id="lblTotal" runat="server" CssClass="display-3" >Total: </asp:Label>
        <asp:Label id="lblImporte" runat="server" CssClass="display-3" ></asp:Label>
    </div>
</asp:Content>
