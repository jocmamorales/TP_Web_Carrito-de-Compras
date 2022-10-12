using AccesoDataBase;
using Carrito.Models;
using Carrito.ModelsDtos;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Negocio
{
    public class ArticuloDTONegocio
    {
        ConexionSQL conexion = null;
        private const string SQL_ARTICULODTO = "SELECT A.Id,A.Codigo,A.Nombre,A.Descripcion Desc_Art,A.IdCategoria," +
            "ISNULL(C.Descripcion,'Sin Categoría') Desc_Cat,A.IdMarca,ISNULL(M.Descripcion, 'Sin Marca') Desc_Marca,A.Precio,A.ImagenUrl" +
            " FROM ARTICULOS A LEFT JOIN CATEGORIAS C ON A.IdCategoria = C.Id LEFT JOIN MARCAS M ON A.IdMarca = M.Id";

        private void NuevaConexion()
        {
            conexion = new ConexionSQL(ConfigurationManager.ConnectionStrings["Arts"].ToString());
        }

        public List<ArticuloDTO> ListarArticulosDTO()
        {
            var list = new List<ArticuloDTO>();
            NuevaConexion();
            string sql = SQL_ARTICULODTO;
            try
            {
                SqlDataReader dataReader = conexion.EjecutarConsultaDataReader(sql);
                while (dataReader.Read())
                {
                    ArticuloDTO artDTO  = new ArticuloDTO();
                    artDTO.Id = int.Parse(dataReader["Id"].ToString());
                    artDTO.Codigo = dataReader["Codigo"].ToString();
                    artDTO.Nombre = dataReader["Nombre"].ToString();
                    artDTO.Descripcion = dataReader["Desc_Art"].ToString().Trim();
                    artDTO.IdMarca = int.Parse(dataReader["IdMarca"].ToString());
                    artDTO.IdCategoria = int.Parse(dataReader["IdCategoria"].ToString());
                    artDTO.Precio = decimal.Parse(dataReader["Precio"].ToString());
                    artDTO.ImagenUrl = dataReader["ImagenUrl"].ToString();
                    artDTO.Categoria_Art = new Categoria();
                    artDTO.Categoria_Art.Descripcion = dataReader["Desc_Cat"].ToString().Trim();
                    artDTO.Marca_Art = new Marca();
                    artDTO.Marca_Art.Descripcion = dataReader["Desc_Marca"].ToString().Trim();
                    list.Add(artDTO);
                }
            }
            catch (Exception ex)
            {
                conexion.CerrarConexion();
                throw ex;
            }
            conexion.CerrarConexion();
            return list;
        }
    }
}
