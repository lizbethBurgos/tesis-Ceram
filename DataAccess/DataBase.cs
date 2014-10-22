using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.Common;
using System.Configuration;
using DataAccess;
using System.Windows.Forms;

namespace Project.DataAccess
{
    public class DataBase
    {
        private DbConnection connection;//conexion
        private DbCommand command;      //comandos
        private String connection_string;   //string de conexion
        private static DbProviderFactory factory;
        private DbDataAdapter adapter;

        public DataBase()
        {
            String provider = ConfigurationManager.AppSettings.Get("PROVEEDOR");
            connection_string = ConfigurationManager.AppSettings.Get("CADENA");
            factory = DbProviderFactories.GetFactory(provider);

        }
        public void connect()
        {
            try
            {
                connection = factory.CreateConnection();
                connection.ConnectionString = connection_string;
                connection.Open();
            }
            catch (Exception ex)
            {
                String text = "no se pudo conectar a la base de datos";
                throw new DataAccessException(text, ex);
            }
        }
        public void CreateCommand(string sql)
        {
            try
            {
                command = factory.CreateCommand();
                command.Connection = connection;
                command.CommandType = CommandType.Text;
                command.CommandText = sql;
            }
            catch (Exception ex)
            {
                throw new DataAccessException(ex.Message);
            }
        }
        public DbDataReader Query()
        {
            try
            {
                return command.ExecuteReader();
            }
            catch (Exception ex)
            {
                throw new DataAccessException(ex.Message);
            }
        }
        public void Execute()
        {
            try
            {
                command.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw new DataAccessException(ex.Message);
            }
        }
        public Object Scalar()
        {
            try
            {
                return command.ExecuteScalar();
            }
            catch (Exception ex)
            {
                throw new DataAccessException(ex.Message);
            }
        }
        public void Close()
        {
            try
            {
                connection.Close();
            }
            catch (Exception ex)
            {
                throw new DataAccessException(ex.Message);
            }
        }
        // metodo que rellena el dataSet
        public DataSet Set(string sql)
        {
            try
            {
                adapter = factory.CreateDataAdapter();
                connect();
                CreateCommand(sql);
                adapter.SelectCommand = command;
                DbCommandBuilder cb = factory.CreateCommandBuilder();
                cb.DataAdapter = adapter;
                DataSet set = new DataSet();
                adapter.Fill(set);
                return set;
            }
            catch (Exception ex)
            {
                throw new DataAccessException(ex.Message);
            }
        }
        public DataSet SetEP(string sql)
        {
            try
            {
                adapter = factory.CreateDataAdapter();
                connect();
                CreateCommandSP(sql);
                adapter.SelectCommand = command;
                DbCommandBuilder cb = factory.CreateCommandBuilder();
                cb.DataAdapter = adapter;
                DataSet set = new DataSet();
                adapter.Fill(set);
                return set;
            }
            catch (Exception ex)
            {
                throw new DataAccessException(ex.Message);
            }
        }
        public DataSet SetSP(string sql, List<string> ls, List<DbType> ldt, List<Object> lvt)
        {
            try
            {
                adapter = factory.CreateDataAdapter();
                connect();
                CreateCommandSP(sql);
                for (int i = 0; i < ls.Count; i++)
                {
                    CreateParameter(ldt[i],ls[i], lvt[i]);
                }
                adapter.SelectCommand = command;
                DbCommandBuilder cb = factory.CreateCommandBuilder();
                cb.DataAdapter = adapter;
                DataSet set = new DataSet();
                adapter.Fill(set);
                return set;
            }
            catch (Exception ex)
            {
                throw new DataAccessException(ex.Message);
            }
        }
        public void UpdateData(DataSet list)
        {
            adapter.Update(list);
        }
        public void CreateCommandSP(string sql)
        {
            try
            {
                command = factory.CreateCommand();
                command.Connection = connection;
                command.CommandType = CommandType.StoredProcedure;
                command.CommandText = sql;
            }
            catch (Exception ex)
            {
                throw new DataAccessException(ex.Message);
            }
        }
        public void CreateParameter(DbType type,string name, object value)
        {
            DbParameter parameter = factory.CreateParameter();
            parameter.DbType = type;
            parameter.ParameterName = name;
            parameter.Value = value;
            command.Parameters.Add(parameter);
        }
    }
}

