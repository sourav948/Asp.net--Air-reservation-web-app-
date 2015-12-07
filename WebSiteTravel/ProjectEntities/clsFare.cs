using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ProjectEntities
{
    public class clsFare
    {
        int fareid;
        int fare;

        public clsFare(int fare)
        {
            this.fare = fare;

        }

        public int FareId
        {
            get
            {
                return fareid;
            }
  
        }

        public int Fare
        {
            get
            {
                return fare;
            }

            set
            {
                fare = value;
            }

          }

    }
}
