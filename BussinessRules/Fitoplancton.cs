using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BussinessRules
{
   public class Fitoplancton
    {
       private string _name;
       private int _cod;

       public Fitoplancton(int cod)
       {
           this._cod = cod;
       }
       public Fitoplancton(string name)
       {
           this._name = name;
       }
       public Fitoplancton(int cod, string name)
       {
           this._cod = cod;
           this._name = name;
       }
       public int Cod
       {
           get { return _cod; }
           set { _cod = value; }
       }
       public string Name
       {
           get { return _name; }
           set { _name = value; }
       }
    }
}
