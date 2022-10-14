using Carrito.ModelsDtos;
using Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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
        }
    }

}