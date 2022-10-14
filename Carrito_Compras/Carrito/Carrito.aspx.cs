using Carrito.ModelsDtos;
using Negocio;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Carrito
{
    public partial class Carrito : System.Web.UI.Page
    {
        public List<ArticuloDTO> artsDTOsCarrito { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {            
            if (Page.Session["ArtsTemp"] == null)
                return;
            artsDTOsCarrito = (List<ArticuloDTO>)Page.Session["ArtsTemp"];
            grdCarrito.DataSource = productosCarrito(artsDTOsCarrito);
            grdCarrito.DataBind();
            lblImporte.Text = CalcularTotalCarrito();            
        }

        private List<ModeloCarritoDTO> productosCarrito(List<ArticuloDTO> artsDtos)
        {
            List<ModeloCarritoDTO> modelosCarrito = new List<ModeloCarritoDTO>();

            var productosCarrito = artsDTOsCarrito.GroupBy(x => new {x.Id, x.Nombre, x.Precio })
                   .Select(g => new { g.Key.Id, g.Key.Nombre, g.Key.Precio, Cantidad = g.Count() }).ToList();

            foreach (var prodCarrito in productosCarrito)
            {
                ModeloCarritoDTO modeloCarrito = new ModeloCarritoDTO()
                {
                    Nombre = prodCarrito.Nombre,
                    Id =  prodCarrito.Id,
                    Precio = prodCarrito.Precio,
                    Cantidad = prodCarrito.Cantidad
                };
                modelosCarrito.Add(modeloCarrito);
            }
            return modelosCarrito;
        }

        private string CalcularTotalCarrito()
        {
            decimal total = 0;
            if (grdCarrito.Rows.Count == 0)
                return "";

            foreach (GridViewRow gridViewRow in grdCarrito.Rows)
                total += decimal.Parse(gridViewRow.Cells[3].Text);
            return total.ToString();
        }
    }
}