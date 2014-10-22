using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BussinessRules
{
   public class ApplicantCompany
    {
       private string _nameClient, _direClient, _email;
       private int _codClient, _fono;

       public ApplicantCompany(int codClient, string nameClient, string emailClient, string direClient, int fono)
       {
           this._codClient = codClient;
           this._direClient = direClient;
           this._email = emailClient;
           this._fono = fono;
           this._nameClient = nameClient;
       }
       public ApplicantCompany(string nameClient, string emailClient, string direClient, int fono)
       {
           this._direClient = direClient;
           this._email = emailClient;
           this._fono = fono;
           this._nameClient = nameClient;
       }
       public ApplicantCompany(int codClient)
       {
           this._codClient = codClient;
       }
       public ApplicantCompany(string nameClient)
       {
           this._nameClient = nameClient;
       }
       public int CodClient
       {
           get { return _codClient; }
           set { _codClient = value; }
       }

       public int Fono
       {
           get { return _fono; }
           set { _fono = value; }
       }

       public string NameClient
       {
           get { return _nameClient; }
           set { _nameClient = value; }
       }

       public string DireClient
       {
           get { return _direClient; }
           set { _direClient = value; }
       }

       public string Email
       {
           get { return _email; }
           set { _email = value; }
       }
    }
}
