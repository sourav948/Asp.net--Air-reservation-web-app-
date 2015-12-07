using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ProjectEntities
{
    public class ClsCountry
    {
        int conid;
        string cname;
        public ClsCountry() 
        {
        }
        public ClsCountry(string cname)
        {
            this.cname = cname;
        }
       public string ContryName
        {
            get 
            {
                return cname;
            }
            set 
            {
                cname= value;
            }
        }
    }
}
