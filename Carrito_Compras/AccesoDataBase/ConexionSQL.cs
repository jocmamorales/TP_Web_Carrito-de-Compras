using System;
using System.Data.SqlClient;
using System.Data;

namespace AccesoDataBase
{
    public class ConexionSQL 
    {
        private readonly string Conexion;
        private readonly SqlConnection sqlConnection;
        private SqlDataReader reader;
        public SqlDataReader Reader { get { return reader; } }
        public SqlParameter NewSqlParameter { get { return new SqlParameter(); } }
        private SqlCommand command;
        public SqlCommand NewSqlCommand
        {
            get
            {
                if (command == null)
                    return new SqlCommand();
                else
                    return command;
            }
        }

        public ConexionSQL(string conexion)
        {
            Conexion = conexion;
            this.sqlConnection = new SqlConnection(Conexion);
        }

        public SqlDataReader EjecutarConsultaDataReader(string consulta)
        {
            try
            {
                reader = null;
                if (sqlConnection.State != ConnectionState.Closed)
                    sqlConnection.Close();
                sqlConnection.Open();

                SqlCommand sqlCommand = new SqlCommand
                {
                    Connection = sqlConnection,
                    CommandType = CommandType.Text,
                    CommandText = consulta
                };
                reader = sqlCommand.ExecuteReader();
            }
            catch (System.Exception ex)
            {
                throw ex;
            }
            return Reader;
        }
        public void CerrarConexion()
        {
            if (sqlConnection.State == ConnectionState.Open)
                sqlConnection.Dispose();
        }
        public int EjecutarQuery(string consulta)
        {
            SqlCommand conexionCommand = null;
            int numQuery = 0;
            try
            {
                sqlConnection.Open();
                conexionCommand = new SqlCommand();
                conexionCommand.Connection = sqlConnection;
                conexionCommand.CommandText = consulta;
                conexionCommand.CommandType = CommandType.Text;
                numQuery = conexionCommand.ExecuteNonQuery();
            }
            catch (System.Exception ex)
            {
                throw ex;
            }
            finally
            {
                sqlConnection.Close();
            }
            return numQuery;
        }

        public int EjecutarQueryCommand(SqlCommand sqlCommand)
        {
            int numQuery = 0;
            try
            {
                command = sqlCommand;
                sqlConnection.Open();
                command.Connection = sqlConnection;
                numQuery = command.ExecuteNonQuery();
            }
            catch (System.Exception ex)
            {
                throw ex;
            }
            finally
            {
                sqlConnection.Close();
            }
            return numQuery;
        }       
    }
}
