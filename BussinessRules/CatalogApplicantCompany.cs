using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Project.DataAccess;
using System.Data;
using System.Data.Common;

namespace BussinessRules
{
   public class CatalogApplicantCompany
    {
       DataBase bd = new DataBase();
        public void addApplicant(ApplicantCompany ac)
        {
            DataBase bd = new DataBase();
            bd.connect(); //método conectar

            String sql = "addApplicantCompany";
            bd.CreateCommandSP(sql);
            bd.CreateParameter(DbType.String, "@nameCompany", ac.NameClient);
            bd.CreateParameter(DbType.String, "@direccionCompany", ac.DireClient);
            bd.CreateParameter(DbType.String, "@fono", ac.Fono);
            bd.CreateParameter(DbType.String, "@emailCompany", ac.Email);
            bd.Execute();
            bd.Close();
        }
        public void dropUser(ApplicantCompany ac)
        {
            DataBase bd = new DataBase();
            bd.connect(); //método conectar
            String sql = "dropApplicantCompany";
            bd.CreateCommandSP(sql);
            bd.CreateParameter(DbType.Int32, "@codCompany", ac.CodClient);
            bd.Execute();
            bd.Close();
        }
        public List<ApplicantCompany> getApplicantCompanyName(string s)
        {
            List<ApplicantCompany> ls = new List<ApplicantCompany>();
            DataBase bd = new DataBase();
            bd.connect();
            bd.CreateCommandSP("searchApplicantCompany");
            bd.CreateParameter(DbType.String, "@nameCompany", s);
            DbDataReader result = bd.Query();
            while (result.Read())
            {
                ApplicantCompany ac = new ApplicantCompany(result.GetInt32(0), result.GetString(4), result.GetString(3), result.GetString(2), result.GetInt32(1));
                ls.Add(ac);
            }
            result.Close();
            bd.Close();
            return ls;
        }
       /*
        * muestra la compañia que busca a traves del codigo
        * */
        public List<ApplicantCompany> getApplicantCompanyCode(int s)
        {
            List<ApplicantCompany> ls = new List<ApplicantCompany>();
            DataBase bd = new DataBase();
            bd.connect();
            bd.CreateCommandSP("searchApplicantCompanyCode");
            bd.CreateParameter(DbType.Int32, "@codeApplicant", s);
            DbDataReader result = bd.Query();
            while (result.Read())
            {
                ApplicantCompany ac = new ApplicantCompany(result.GetInt32(0), result.GetString(4), result.GetString(3), result.GetString(2), result.GetInt32(1));
                ls.Add(ac);
            }
            result.Close();
            bd.Close();
            return ls;
        }
        /**
         * Metodo para listar todas las empresas muestreadoras
         * */
        public DataSet listApplicantCompany()
        {
            DataSet set = new DataSet();
            string sql = "SELECT * FROM applicantcompany";
            set = bd.Set(sql);
            return set;

        }
        
    }
}
