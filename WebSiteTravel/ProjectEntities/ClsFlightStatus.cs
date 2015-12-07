using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ProjectEntities
{
  public  class ClsFlightStatus
    {
         int flightstatusid;
        string flightstatusname;

        public ClsFlightStatus(string flightstatusname)
        {
            this.flightstatusname = flightstatusname;
        }
        public int FlightStatusId
        {
            get
            {
                return flightstatusid;
            }
        }

        public string FlightStatusName
        {
            get
            {
                return flightstatusname;
            }
            set
            {
                flightstatusname = value;
            }
        }

    }
}
