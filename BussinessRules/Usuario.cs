using System;
using System.Collections.Generic;
using System.Linq;
using System.Windows.Forms;

namespace BussinessRules
{
    public class Usuario
    {
        private string _name, _pass, _posi, _email, _security, _last_name;

        public string Last_name
        {
            get { return _last_name; }
            set { _last_name = value; }
        }
        private int _cod_user;


        public Usuario(string name,string lastName, string posi, string pass, string email, string security)
        {
            this._name = name;
            this._last_name = lastName;
            this._posi = posi;
            this._pass = pass;
            this._email = email;
            this._security = security;
        }
        public Usuario(string email, string pass)
        {
            this._email = email;
            this._pass = pass;
        }
        public Usuario(int cod, string pass)
        {
            this._cod_user=cod;
            this._pass = pass;
        }
        public int Cod_user
        {
            get { return _cod_user; }
            set { _cod_user = value; }
        }
        public string Security
        {
            get { return _security; }
            set { _security = value; }
        }

        public string Email
        {
            get { return _email; }
            set { _email = value; }
        }

        public string Pass
        {
            get { return _pass; }
            set { _pass = value; }
        }

        public string Posi
        {
            get { return _posi; }
            set { _posi = value; }
        }

        public string Name
        {
            get { return _name; }
            set { _name = value; }
        }

    }
}
