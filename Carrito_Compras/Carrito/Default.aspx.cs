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
        protected void Page_Load(object sender, EventArgs e)
        {
            ArticuloDTONegocio articuloDTONegocio = new ArticuloDTONegocio();
            articuloDTOs = articuloDTONegocio.ListarArticulosDTO();
            
            repRepetidor.DataSource=articuloDTOs;
            repRepetidor.DataBind();

        }
       
    }


}