using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DataAccess;
using Project.DataAccess;
using System.Data;
using System.Data.Common;

namespace BussinessRules
{
    public class CatalogSamplerCompany
    {
        DataBase bd = new DataBase();
        public void InsertUser(SamplerCompany sc)
        {
            DataBase bd = new DataBase();
            bd.connect(); //método conectar

            String sql = "addSamplerCompany";
            bd.CreateCommandSP(sql);
            bd.CreateParameter(DbType.String, "@nameCompany", sc.NameSampler);
            bd.CreateParameter(DbType.String, "@direCompany", sc.Direccion);
            bd.CreateParameter(DbType.String, "@fonoCompany", sc.Fono);
            bd.CreateParameter(DbType.String, "@emailSampler", sc.Email);
            bd.Execute();
            bd.Close();
        }
        public void dropUser(SamplerCompany sc)
        {
            DataBase bd = new DataBase();
            bd.connect(); //método conectar
            String sql = "dropSamplerCompany";
            bd.CreateCommandSP(sql);
            bd.CreateParameter(DbType.Int32, "@codCompany", sc.CodSampler);
            bd.Execute();
            bd.Close();
        }
        public List<SamplerCompany> getSamplerCompanyName(string s)
        {
            List<SamplerCompany> ls = new List<SamplerCompany>();
            DataBase bd = new DataBase();
            bd.connect();
            bd.CreateCommandSP("searchSamplerCompany");
            bd.CreateParameter(DbType.String,"@nameCompany",s);
            DbDataReader result = bd.Query();
            while (result.Read())
            {
                SamplerCompany sc = new SamplerCompany(result.GetInt32(0), result.GetInt32(3),result.GetString(2),result.GetString(1),result.GetString(4));
                ls.Add(sc);
            }
            result.Close();
            bd.Close();
            return ls;
        }
        public List<SamplerCompany> getSamplerCompanyCode(int s)
        {
            List<SamplerCompany> ls = new List<SamplerCompany>();
            DataBase bd = new DataBase();
            bd.connect();
            bd.CreateCommandSP("searchSamCodCompany");
            bd.CreateParameter(DbType.String, "@codCompany", s);
            DbDataReader result = bd.Query();
            while (result.Read())
            {
                SamplerCompany sc = new SamplerCompany(result.GetInt32(0),result.GetInt32(3),result.GetString(1), result.GetString(4), result.GetString(2));
                ls.Add(sc);
            }
            result.Close();
            bd.Close();
            return ls;
        }
        
        /**
         * Metodo para listar todas las empresas muestreadoras
         * */
        public DataSet listSamplerCompany()
        {
            DataSet set = new DataSet();
            string sql = "SELECT * FROM samplercompany";
            set = bd.Set(sql);
            return set;
     
        }

        public List<SamplerCompany> getNameSampler()
        {
            DataBase bd = new DataBase();
            bd.connect();
            List<SamplerCompany> lsc = new List<SamplerCompany>();
            String SQL = "SELECT cod_sampler, name_sampler FROM samplercompany";
            bd.CreateCommand(SQL);
            DbDataReader result = bd.Query();
            while (result.Read())
            {
                SamplerCompany sc = new SamplerCompany(result.GetInt32(0), result.GetString(1));
                lsc.Add(sc);
            }
            result.Close();
            bd.Close();
            return lsc;
        }
    }
}
