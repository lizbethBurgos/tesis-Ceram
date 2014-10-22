using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BussinessRules
{
    class BusinessRulesException : Exception
    
     {
        public BusinessRulesException(String msg1, Exception msg2)
            : base(msg1, msg2)
        {

        }
        public BusinessRulesException(String msg1)
            : base(msg1)
        {

        }
    }
    

}
