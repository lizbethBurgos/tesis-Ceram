using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BussinessRules
{
    public class SamplerCompany
    {
        private string _nameSampler, _direccion, _email;
        private int _fono, _codSampler;

        public SamplerCompany(string nameSampler, string direccion, int fono, string email)
        {
            this._nameSampler = nameSampler;
            this._email = email;
            this._direccion = direccion;
            this._fono = fono;
        }
        public SamplerCompany(int code, int fono,string nameSampler, string direccion, string email)
        {
            this._codSampler = code;
            this._email = email;
            this._nameSampler = nameSampler;
            this._direccion = direccion;
            this._fono = fono;
        }
        public SamplerCompany(int code, string nameSampler)
        {
            this._codSampler = code;
            this._nameSampler = nameSampler;
        }
        public SamplerCompany(int code, string direccion, int fono, string email)
        {
            this._codSampler = code;
            this._direccion = direccion;
            this._fono = fono;
            this._email = email;
        }
        public SamplerCompany(int code)
        {
            this._codSampler = code;
        }

        public int CodSampler
        {
            get { return _codSampler; }
            set { _codSampler = value; }
        }

        public int Fono
        {
            get { return _fono; }
            set { _fono = value; }
        }

        public string Direccion
        {
            get { return _direccion; }
            set { _direccion = value; }
        }

        public string NameSampler
        {
            get { return _nameSampler; }
            set { _nameSampler = value; }
        }
        public string Email
        {
            get { return _email; }
            set { _email = value; }
        }

    }
}
