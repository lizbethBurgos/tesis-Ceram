using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Project.DataAccess;
using System.Data;
using System.Data.Common;

namespace BussinessRules
{
    public class CatalogProduct
    {
        public void addProduct(Producto p)
        {
            DataBase bd = new DataBase();
            bd.connect(); //método conectar

            String sql = "addProducto";
            bd.CreateCommandSP(sql);
            bd.CreateParameter(DbType.String, "@nameProducto", p.Name_product);
            bd.Execute();
            bd.Close();
        }
        public void dropProduct(Producto p)
        {
            DataBase bd = new DataBase();
            bd.connect(); //método conectar

            String sql = "dropProduct";
            bd.CreateCommandSP(sql);
            bd.CreateParameter(DbType.Int32, "@codeProduct", p.Cod_product);
            bd.Execute();
            bd.Close();
        }
        public List<Producto> getProductName(string s)
        {
            List<Producto> lp = new List<Producto>();
            DataBase bd = new DataBase();
            bd.connect();
            bd.CreateCommandSP("searchProductName");
            bd.CreateParameter(DbType.String, "@nameProduct", s);
            DbDataReader result = bd.Query();
            while (result.Read())
            {
                Producto p= new Producto(result.GetInt32(0),result.GetString(1));
                lp.Add(p);
            }
            result.Close();
            bd.Close();
            return lp;
        }
        public List<Producto> getProductCode(int s)
        {
            List<Producto> lp = new List<Producto>();
            DataBase bd = new DataBase();
            bd.connect();
            bd.CreateCommandSP("searchProductCode");
            bd.CreateParameter(DbType.Int32, "@codProduct", s);
            DbDataReader result = bd.Query();
            while (result.Read())
            {
                Producto p = new Producto(result.GetInt32(0), result.GetString(1));
                lp.Add(p);
            }
            result.Close();
            bd.Close();
            return lp;
        }
        /**
         * Metodo para listar todas los Productos
         * */
        public DataSet listProduct()
        {
            DataBase bd = new DataBase();
            DataSet set = new DataSet();
            string sql = "SELECT * FROM product";
            set = bd.Set(sql);
            return set;

        }
    }
}
