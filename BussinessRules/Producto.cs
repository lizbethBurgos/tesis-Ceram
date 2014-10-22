using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BussinessRules
{
    public class Producto
    {
        private int _cod_product;

        public int Cod_product
        {
            get { return _cod_product; }
            set { _cod_product = value; }
        }
        private string _name_product;

        public string Name_product
        {
            get { return _name_product; }
            set { _name_product = value; }
        }

        public Producto(int cod)
        {
            this._cod_product = cod;
        }
        public Producto(string name)
        {
            this._name_product = name;
        }

        public Producto(int cod, string name)
        {
            this._cod_product = cod;
            this._name_product = name;
        }
    }
}
