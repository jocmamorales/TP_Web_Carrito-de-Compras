using System.ComponentModel;
using Carrito.Models;


namespace Carrito.ModelsDtos
{
    public class ArticuloDTO : Articulo
    {

        public Categoria Categoria_Art { get; set; }
        public Marca Marca_Art { get; set; }
        [DisplayName("Categoría")]
        public string Categoria { get { return Categoria_Art.Descripcion; } set { Categoria_Art.Descripcion = value; } }
        public string Marca { get { return Marca_Art.Descripcion; } set {Marca_Art.Descripcion = value; } }
    }
}
