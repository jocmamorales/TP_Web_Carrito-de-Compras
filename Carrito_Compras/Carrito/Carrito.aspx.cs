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
    public partial class Carrito : System.Web.UI.Page
    {
        public List<ArticuloDTO> articuloDTOs { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            ArticuloDTONegocio articuloDTONegocio = new ArticuloDTONegocio();
            articuloDTOs = articuloDTONegocio.ListarArticulosDTO();
            grdCarrito.DataSource = articuloDTOs;
            grdCarrito.DataBind();
            lblImporte.Text = CalcularTotalCarrito();
        }

        private string CalcularTotalCarrito()
        {
            decimal total = 0;
            if (grdCarrito.Rows.Count == 0)
                return "";
            foreach (GridViewRow gridViewRow in grdCarrito.Rows)
                total += decimal.Parse(gridViewRow.Cells[9].Text);
            return total.ToString();
        }
    }
}