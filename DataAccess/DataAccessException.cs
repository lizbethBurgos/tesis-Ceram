using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Project.DataAccess
{
    public class DataAccessException : ApplicationException
    {
        public DataAccessException(String msg1, Exception msg2)
            : base(msg1, msg2)
        {

        }
        public DataAccessException(String msg)
            : base(msg)
        {

        }
    }
}