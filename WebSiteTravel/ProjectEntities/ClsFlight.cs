using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ProjectEntities
{
    public class ClsFlight
    {
         int FlightId;
       string FlightName;
       int CompanyId;
        int FlightStatusId;

        public ClsFlight()
        {
        }
        public ClsFlight( string FlightName, int CompanyId, int FlightStatusId)
        {
           
            this.FlightName = FlightName;
            this.CompanyId = CompanyId;
            this.FlightStatusId = FlightStatusId;
        }

        public int FlgtId
        {
            get
            {
                return FlightId;
            }
        }
        public string FlgtName
        {
            get
            {
                return FlightName;
            }
            set
            {
                FlightName = value;
            }
        }
        public int CompId
        {
            get
            {
                return CompanyId;
            }
            set
            {
                CompanyId = value;
            }
        }
        public int FlgtStatusId
        {
            get
            {
                return FlightStatusId;
            }
            set
            {
                FlightStatusId= value;
            }
        }

    }
}
