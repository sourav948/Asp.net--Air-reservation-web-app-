using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ProjectEntities
{
   public class ClsCompany
    {
        int cmpId;
        string cmpName;
        string cmpAdd;
        string cmpUrl;
        public ClsCompany(string cmpName, string cmpAdd, string cmpUrl)
        {

            this.cmpName = cmpName;
            this.cmpAdd = cmpAdd;
            this.cmpUrl = cmpUrl;
        }
        public int CmpId
        {
            get
            {
                return cmpId;
            }

        }

        public string CmpName
        {
            get
            {
                return cmpName; ;
            }
            set
            {
                cmpName = value;
            }
        }
        public string CmpAdd
        {
            get
            {
                return cmpAdd;
            }
            set
            {
                cmpAdd = value;
            }
        }
        public string CmpUrl
        {
            get
            {
                return cmpUrl;
            }
            set
            {
                cmpUrl = value;
            }
        }

    }
}
