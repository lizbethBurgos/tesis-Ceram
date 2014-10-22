using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Project.DataAccess;
using System.Data;
using System.Data.Common;

namespace BussinessRules
{
    public class CatalogFitoplancton
    {
        public void addFitoplancton(Fitoplancton f)
        {
            DataBase bd = new DataBase();
            bd.connect(); //método conectar

            String sql = "addCell";
            bd.CreateCommandSP(sql);
            bd.CreateParameter(DbType.String, "@nameSpecie", f.Name);
            bd.Execute();
            bd.Close();
        }
        public void dropFitoplancton(Fitoplancton f)
        {
            DataBase bd = new DataBase();
            bd.connect(); //método conectar

            String sql = "dropCell";
            bd.CreateCommandSP(sql);
            bd.CreateParameter(DbType.Int32, "@codeCell", f.Cod);
            bd.Execute();
            bd.Close();
        }
        public List<Fitoplancton> getCellName(string s)
        {
            List<Fitoplancton> lf = new List<Fitoplancton>();
            DataBase bd = new DataBase();
            bd.connect();
            bd.CreateCommandSP("searchCellName");
            bd.CreateParameter(DbType.String, "@nameSpecie", s);
            DbDataReader result = bd.Query();
            while (result.Read())
            {
                Fitoplancton f = new Fitoplancton(result.GetInt32(0), result.GetString(1));
                lf.Add(f);
            }
            result.Close();
            bd.Close();
            return lf;
        }
        public List<Fitoplancton> getCellCode(int s)
        {
            List<Fitoplancton> lf = new List<Fitoplancton>();
            DataBase bd = new DataBase();
            bd.connect();
            bd.CreateCommandSP("searchCellCode");
            bd.CreateParameter(DbType.Int32, "@codCell", s);
            DbDataReader result = bd.Query();
            while (result.Read())
            {
                Fitoplancton f = new Fitoplancton(result.GetInt32(0), result.GetString(1));
                lf.Add(f);
            }
            result.Close();
            bd.Close();
            return lf;
        }
    }
}
