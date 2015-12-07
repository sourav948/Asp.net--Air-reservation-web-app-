using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ProjectEntities
{
    public class ClsCustomerStatus
    {
        int custStatusId;
        string cusStatusName;

        public ClsCustomerStatus(string cusStatusName)
        {
            this.cusStatusName = cusStatusName;
        }

        public int CusStatusId
        {
            get
            {
                return custStatusId;
            }
        }


        public string CusStatusName
        {
            get
            {
                return cusStatusName;
            }
            set
            {
                cusStatusName = value;
            }

        }


    }
}
