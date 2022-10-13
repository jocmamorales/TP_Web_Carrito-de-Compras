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
        private List<ArticuloDTO> articuloDTOs;
        protected void Page_Load(object sender, EventArgs e)
        {
            ArticuloDTONegocio articuloDTONegocio = new ArticuloDTONegocio();
            articuloDTOs = articuloDTONegocio.ListarArticulosDTO();

        }
        private void CargarCards()
        {
           
        }
    }


}