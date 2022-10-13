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
        public List<ArticuloDTO> articuloDTOs { get; set; }
        public List<ArticuloDTO> ArtDTOsTemporal { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            ArticuloDTONegocio articuloDTONegocio = new ArticuloDTONegocio();
            articuloDTOs = articuloDTONegocio.ListarArticulosDTO();
            if (!IsPostBack)
            {
                repRepetidor.DataSource = articuloDTOs;
                repRepetidor.DataBind();
            }            
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            int idArt = int.Parse(((Button)sender).CommandArgument);
            ArticuloDTO articuloDTO = articuloDTOs.Find(x => x.Id.Equals(idArt));
            ArtDTOsTemporal.Add(articuloDTO);
        }
    }

}