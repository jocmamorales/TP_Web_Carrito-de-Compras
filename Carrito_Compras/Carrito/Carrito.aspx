<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="Carrito.aspx.cs" Inherits="Carrito.Carrito" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-lg">
        <div class="mt-4 p-4 bg-primary text-white rounded">
            <h3>
                Productos del carrito de compras
            </h3>
        </div>
        <div style="overflow-x: auto;">
            <asp:GridView ID="grdCarrito" runat="server" DataKeyNames="Id" OnRowCommand="grdCarrito_RowCommand"
                CssClass="table table-success table-striped table-responsive" style="margin-bottom: 0px;" >
                <Columns>
                    <asp:ButtonField ButtonType="Button" HeaderText="Eliminar" Text="Eliminar" CommandName="artId" />
                </Columns>
            </asp:GridView>
        </div>
        <div class="mt-1 p-4 bg-primary text-white rounded">
            <div class="row">
                <div class="col-3">
                    <asp:Button runat="server" ID="btnVolver" Text="Volver"
                        CssClass="btn btn-primary" OnClick="btnVolver_Click" />
                </div>
                <div class="col-6">
                    <div class="form-floating">
                        <asp:Label ID="lblTotal" runat="server" CssClass="display-6">Total: $</asp:Label>
                        <asp:Label ID="lblImporte" runat="server" CssClass="display-6"></asp:Label>
                    </div>
                </div>
                <div class="col-3">
                    <div class="form-floating">
                        <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                            data-bs-target="#exampleModal">
                            Pagar</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="exampleModalLabel">El pago ha sido haceptado</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    Gracias por su compra vuelva pronto
                </div>
                <div class="modal-footer">
                    <asp:Button runat="server" ID="btnCerrar" Text="Cerrar" type="button"
                        CssClass="btn btn-primary" data-bs-dismiss="modal"
                        OnClick="BtnCerrar_OnClick"></asp:Button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
