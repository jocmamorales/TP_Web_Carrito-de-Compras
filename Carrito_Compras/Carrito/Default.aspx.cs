﻿using Carrito.ModelsDtos;
using Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

namespace Carrito
{
    public partial class Default : System.Web.UI.Page
    {
        public List<ArticuloDTO> ArticulosDTOs { get; set; }
        public List<ArticuloDTO> ArtsDTOsTemp { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ArticuloDTONegocio articuloDTONegocio = new ArticuloDTONegocio();
                ArticulosDTOs = articuloDTONegocio.ListarArticulosDTO();
                repRepetidor.DataSource = ArticulosDTOs;
                repRepetidor.DataBind();
                Session.Add("Articulos", ArticulosDTOs);
                CantidadCarrito();
            }
           
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            int idArt = int.Parse(((Button)sender).CommandArgument);
            ArticulosDTOs = (List<ArticuloDTO>)Page.Session["Articulos"];
            ArticuloDTO articuloDTO = ArticulosDTOs.Find(x => x.Id.Equals(idArt));
            if (ArtsDTOsTemp == null)
                ArtsDTOsTemp = new List<ArticuloDTO>();
            if (Page.Session["ArtsTemp"] != null)
            {
                ArtsDTOsTemp = (List<ArticuloDTO>)Page.Session["ArtsTemp"];
                Page.Session.Remove("ArtsTemp");
            }
            ArtsDTOsTemp.Add(articuloDTO);
            Page.Session.Add("ArtsTemp", ArtsDTOsTemp);
            CantidadCarrito();
            LblVacio.Text = "";
        }

        private void CantidadCarrito()
        {
            if (Page.Session["ArtsTemp"] != null)
                ArtsDTOsTemp = (List<ArticuloDTO>)Page.Session["ArtsTemp"];
            if (ArtsDTOsTemp != null)
                TxtBoxCantidad.Text = ArtsDTOsTemp.Count.ToString();
            else
                TxtBoxCantidad.Text = "0";
        }

        protected void btncarrito_Click(object sender, EventArgs e)
        {
            int cant = 0;
            if (!TxtBoxCantidad.Text.Trim().Equals(""))
                cant = int.Parse(TxtBoxCantidad.Text); 
            if (cant > 0)
                Response.Redirect("Carrito.aspx", false);
            else
                LblVacio.Text = "Carrito Vacio";
        }

        protected void BtnFiltro_Click(object sender, EventArgs e)
        {
            if (TxtFiltro.Text.Trim().Equals(""))
            {
                ArticulosDTOs = (List<ArticuloDTO>)Page.Session["Articulos"];
                repRepetidor.DataSource = ArticulosDTOs;
                repRepetidor.DataBind();
                Session.Add("Articulos", ArticulosDTOs);
                CantidadCarrito();
            }
                
            ArticulosDTOs = (List<ArticuloDTO>)Page.Session["Articulos"];
            List<ArticuloDTO> artDTO = ArticulosDTOs.FindAll(x => x.Nombre.ToUpper().Contains(TxtFiltro.Text.ToUpper()) || x.Descripcion.ToUpper().Contains(TxtFiltro.Text.ToUpper()));
            repRepetidor.DataSource = artDTO;
            repRepetidor.DataBind();
            

        }
    }

}