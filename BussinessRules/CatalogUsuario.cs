using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DataAccess;
using System.Data;
using Project.DataAccess;
using System.Data.Common;

namespace BussinessRules
{
    public class CatalogUsuario
    {
        public bool Validate(Usuario u)
        {
            bool exist = false;
            DataBase bd = new DataBase();
            bd.connect();
            string sql = "validarUser";
            bd.CreateCommandSP(sql);
            bd.CreateParameter(DbType.String, "@emailUser", u.Email);
            bd.CreateParameter(DbType.String, "@passUser", u.Pass);
            /*int value = (int)bd.Scalar();
            if (value == 1)
                exist = true;
            else
                return exist;
            return exist;*/
            DbDataReader result = bd.Query();
            if (result.Read())
                exist = true;
            bd.Close();
            result.Close();
            return exist;
           
        }

        public void InsertUser(Usuario u)
        {
            DataBase bd = new DataBase();
            bd.connect(); //método conectar

            String sql = "addUser";
            bd.CreateCommandSP(sql);
            bd.CreateParameter(DbType.String, "@nameUser", u.Name);
            bd.CreateParameter(DbType.String, "@lastNameU", u.Last_name);
            bd.CreateParameter(DbType.String, "@passUser",u.Pass);
            bd.CreateParameter(DbType.String, "@emailUser", u.Email);
            bd.CreateParameter(DbType.String, "@posiUser", u.Posi);
            bd.CreateParameter(DbType.String, "@securUser", u.Security);
            bd.Execute();
            bd.Close();
        }
        public void dropUser(Usuario u)
        {
            DataBase bd = new DataBase();
            bd.connect(); //método conectar
            String sql = "dropUser";
            bd.CreateCommandSP(sql);
            bd.CreateParameter(DbType.Int32, "@codUser", u.Cod_user);
            bd.CreateParameter(DbType.String, "@passAdmin", u.Pass);
            bd.Execute();
            bd.Close();
        }
        public List<Usuario> searchUser(string e)
        {
            try
            {
                DataBase bd = new DataBase();
                bd.connect(); //método conectar
                List<Usuario> listUser = new List<Usuario>();
                //SELECT empleado.rut_empleado, empleado.name_emple, AFP.NAME_AFP, SALUD.NAME_SALUD FROM AFP INNER JOIN empleado ON AFP.ID_AFP = empleado.id_afp INNER JOIN SALUD ON empleado.id_salud = SALUD.ID_SALUD WHERE(empleado.rut_empleado = '" + e + "')"
                String sql = "searchUser";
                bd.CreateCommandSP(sql);
                bd.CreateParameter(DbType.String, "@emailUser", e);
                DbDataReader dbd = bd.Query();
                while (dbd.Read())
                {
                    Usuario us = new Usuario(dbd.GetString(0), dbd.GetString(1));
                    listUser.Add(us);
                }
                bd.Close();
                return listUser;
            }
            catch (DataAccessException ex)
            {
                throw new BusinessRulesException(ex.Message);
            }
        }
    }
}
