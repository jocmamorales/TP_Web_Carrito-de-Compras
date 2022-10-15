using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Web;

namespace Carrito.ModelsDtos
{
    public class ModeloCarritoDTO
    {
        public int Id { get; set; }
        public string Nombre { get; set; }
        public int Cantidad { get; set; }
        [DisplayName("Precio Unitario")]
        public decimal? Precio { get; set; }
        [DisplayName("Importe Total")]
        public decimal? Importe { get; set; }
    }
}