using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Carrito.ModelsDtos
{
    public class ModeloCarritoDTO
    {
        public int Id { get; set; }
        public string Nombre { get; set; }
        public int Cantidad { get; set; }
        public decimal? Precio { get; set; }
    }
}