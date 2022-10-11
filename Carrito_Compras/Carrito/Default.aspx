<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Carrito.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
        <div class="row row-cols-1 row-cols-md-3 g-4">
            <div class="col">
                <div class="card h-100">
                    <img src="..." class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Título de la tarjeta</h5>
                        <p class="card-text">DESCRIPCION largo.</p>
                    </div>
                    <div class="card-footer">
                        <small class="text-muted">Última actualización hace 3 minutos</small>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card h-100">
                    <img src="..." class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Título de la tarjeta</h5>
                        <p class="card-text">DESCRIPCION largo.</p>
                    </div>
                    <div class="card-footer">
                        <small class="text-muted">PIE DE CARD</small>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card h-100">
                    <img src="..." class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Título de la tarjeta</h5>
                        <p class="card-text">Esta es una tarjeta más amplia con texto de apoyo a continuación como introducción natural a contenido adicional. Esta tarjeta tiene un contenido aún más largo que la primera para mostrar esa acción de igual altura.</p>
                    </div>
                    <div class="card-footer">
                        <small class="text-muted">PIE DE CARD</small>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card h-100">
                    <img src="..." class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Título de la tarjeta</h5>
                        <p class="card-text">DESCRIPCION largo.</p>
                    </div>
                    <div class="card-footer">
                        <small class="text-muted">Última actualización hace 3 minutos</small>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card h-100">
                    <img src="..." class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Título de la tarjeta</h5>
                        <p class="card-text">DESCRIPCION largo.</p>
                    </div>
                    <div class="card-footer">
                        <small class="text-muted">PIE DE CARD</small>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card h-100">
                    <img src="..." class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Título de la tarjeta</h5>
                        <p class="card-text">Esta es una tarjeta más amplia con texto de apoyo a continuación como introducción natural a contenido adicional. Esta tarjeta tiene un contenido aún más largo que la primera para mostrar esa acción de igual altura.</p>
                    </div>
                    <div class="card-footer">
                        <small class="text-muted">PIE DE CARD</small>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card h-100">
                    <img src="..." class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Título de la tarjeta</h5>
                        <p class="card-text">DESCRIPCION largo.</p>
                    </div>
                    <div class="card-footer">
                        <small class="text-muted">Última actualización hace 3 minutos</small>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card h-100">
                    <img src="..." class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Título de la tarjeta</h5>
                        <p class="card-text">DESCRIPCION largo.</p>
                    </div>
                    <div class="card-footer">
                        <small class="text-muted">PIE DE CARD</small>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card h-100">
                    <img src="..." class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Título de la tarjeta</h5>
                        <p class="card-text">Esta es una tarjeta más amplia con texto de apoyo a continuación como introducción natural a contenido adicional. Esta tarjeta tiene un contenido aún más largo que la primera para mostrar esa acción de igual altura.</p>
                    </div>
                    <div class="card-footer">
                        <small class="text-muted">PIE DE CARD</small>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card h-100">
                    <img src="..." class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Título de la tarjeta</h5>
                        <p class="card-text">DESCRIPCION largo.</p>
                    </div>
                    <div class="card-footer">
                        <small class="text-muted">Última actualización hace 3 minutos</small>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card h-100">
                    <img src="..." class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Título de la tarjeta</h5>
                        <p class="card-text">DESCRIPCION largo.</p>
                    </div>
                    <div class="card-footer">
                        <small class="text-muted">PIE DE CARD</small>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card h-100">
                    <img src="..." class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Título de la tarjeta</h5>
                        <p class="card-text">Esta es una tarjeta más amplia con texto de apoyo a continuación como introducción natural a contenido adicional. Esta tarjeta tiene un contenido aún más largo que la primera para mostrar esa acción de igual altura.</p>
                    </div>
                    <div class="card-footer">
                        <small class="text-muted">PIE DE CARD</small>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
