using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace WEB.AQTV.SAS.Clases
{
    public class LoginService
    {
        public static bool Autenticar(String usuario, string password)
        {
            string sql = @"SELECT COUNT(*)
                         FROM Usuario
                         WHERE UserNama = @usuario AND Contraseña = @password";

            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString()))
            {
                conn.Open();
                SqlCommand command = new SqlCommand(sql, conn);
                command.Parameters.AddWithValue("@usuario", usuario);
                string hash = Helper.EncodePassword(string.Concat(usuario, password));
                command.Parameters.AddWithValue("@password", hash);

                int count = Convert.ToInt32(command.ExecuteScalar());

                if (count == 0)
                {
                    return false;
                }
                else
                {
                    return true;
                }

            }

        }

        public static void Security(int UserID, string usuario, DateTime ultimoacc, string ip)
        {
            string sql = @"InSERT INTO UsuarioSecurity(
                          UsuarioID,
                           UserName,
                          UtimoAcceso,
                          IPAcceso)
                          values( 
                          @UsuarioID,
                           @UserName,
                          @UtimoAcceso,
                          @IPAcceso)
                          SELECT SCOPE_IDENTITY()";

            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString()))
            {

                SqlCommand command = new SqlCommand(sql, conn);
                command.Parameters.AddWithValue("@UsuarioID", UserID);
                command.Parameters.AddWithValue("@UserName", usuario);
                command.Parameters.AddWithValue("@UtimoAcceso", ultimoacc);
                command.Parameters.AddWithValue("@IPAcceso", ip);
                conn.Open();
                int resultado = Convert.ToInt32(command.ExecuteScalar());

            }
        }

        public static DataTable prConsultaUsuario(string usuario, string password)
        {
            string sql = @"SELECT UsuarioID
                            FROM Usuario
                            WHERE UserNama = @username AND Contraseña = @password";


            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString()))
            {
                SqlCommand command = new SqlCommand(sql, conn);

                command.Parameters.AddWithValue("@username", usuario);
                string hash = Helper.EncodePassword(string.Concat(usuario, password));
                command.Parameters.AddWithValue("@password", hash);

                conn.Open();
                SqlDataAdapter daAdaptador = new SqlDataAdapter(command);
                DataTable dtDatos = new DataTable();
                daAdaptador.Fill(dtDatos);
                return dtDatos;
            }
        }

        public static int prIngresarUsuario(string UserNama, string Contraseña, string Email, DateTime FechaRegistro,int Tipo)
        {
            int resultado = -1;
            string sql = string.Format(@"
             INSERT INTO [dbo].[Usuario]
           ([UserNama]
           ,[Contraseña]
           ,[Email]
           ,[FechaRegistro]
           ,[Estado]
           ,[Tipo])
             VALUES
           (@UserNama,
            @Contraseña,
            @Email, 
            @FechaRegistro,
            @Estado,
            @Tipo )");

            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString()))
            {

                SqlCommand command = new SqlCommand(sql, conn);
                command.Parameters.AddWithValue("@UserNama", UserNama);
                string hash = Helper.EncodePassword(string.Concat(UserNama, Contraseña));
                command.Parameters.AddWithValue("@Contraseña", hash);
                command.Parameters.AddWithValue("@Email", Email);
                command.Parameters.AddWithValue("@FechaRegistro", FechaRegistro);
                command.Parameters.AddWithValue("@Estado", 1);
                command.Parameters.AddWithValue("@Tipo", Tipo);
                conn.Open();
                resultado = Convert.ToInt32(command.ExecuteScalar());

            }


            return resultado;
        }    
    }
}