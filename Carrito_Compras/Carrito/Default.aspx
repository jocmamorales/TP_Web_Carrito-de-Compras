<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Carrito.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <div class="d-grid gap-10 col-12 mx-auto">
        <asp:Label ID="LblCantidad" runat="server" Text=""></asp:Label>
        <asp:ImageButton ID="btncarrito" Text="Carrito" runat="server" OnClick="btncarrito_Click" CssClass="btn btn-danger" BorderColor="Black"  ImageUrl="https://cdn-icons-png.flaticon.com/512/107/107831.png?w=740&t=st=1665782017~exp=1665782617~hmac=95808e2329e630a6ba9074a08d0e67d284da4975037a7d5e51dd48611f5c47fa" Width="50" Height="50"/>
        </div>
            <asp:Label ID="LblVacio" runat="server" Text=""></asp:Label>
    </div>
    <%-- CARRUSEL --%>
    <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="https://www.nespresso.com/coffee-blog/assets/images/article-7/01_img_1_1142x644_cabecera.jpg" class="d-block w-100" alt="cafetera" style="width: 700px; height: 400px">
                <div class="carousel-caption d-none d-md-block">
                    <h5>La vida es eso que empieza despues del café</h5>
                    <p>Visita nuestras ofertas de temporada en cafeteras.</p>
                </div>
            </div>
            <div class="carousel-item">
                <img src="https://cloudfront-us-east-1.images.arcpublishing.com/infobae/M4PTJWPEARC75CP4FG4KT5G4SE.jpg" class="d-block w-100" style="width: 500px; height: 400px" alt="Celular">
                <div class="carousel-caption d-none d-md-block">
                    <h5>En barrio de ricachones sin armas ni rencores es solo un celular y no amores</h5>
                    <p>Aprovechá las ofertas de celulares</p>
                </div>
            </div>
            <div class="carousel-item">
                <img src="https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto/v1/attachments/generic_asset/asset/6e48c342709b041d5509379e2a30bb08-1639485540035/Como%20hacer%20directos%20en%20twitch-main.jpg" class="d-block w-100" style="width: 700px; height: 400px" alt="Gamer">
                <div class="carousel-caption d-none d-md-block">
                    <h5>Pensando en serlo?</h5>
                    <p>Tenemos todo para tus sueños en el sector streamers</p>
                </div>
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Anterior</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Siguiente</span>
        </button>

        <%-- CARDS --%>
        <asp:Repeater runat="server" ID="repRepetidor">            
            <ItemTemplate>
                <div class="row row-cols-1 row-cols-md-3 g-4">
                    <div class="col">
                        <div class="card">
                            <img src="<%#Eval("ImagenUrl") %>" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title"><%#Eval("Nombre") %></h5>
                                <p class="card-text"><%#Eval("Descripcion")%></p>
                                <p class="card-text"><%#Eval("Precio")%> </p>
                            </div>
                            <div class="card-footer">
                                <div class="d-grid gap-2 col-6 mx-auto">
                                    <asp:Button ID="btnDetalle" runat="server" Text="Ver detalle" />
                                    <asp:Button ID="btnAgregar" runat="server" Text="Agregar al carrito" OnClick="btnAgregar_Click" CommandArgument='<%#Eval("id") %>' CommandName="artId" />
                                </div>
                            </div>
                        </div>
                    </div>
            </ItemTemplate>
        </asp:Repeater>

    </div>

</asp:Content>
