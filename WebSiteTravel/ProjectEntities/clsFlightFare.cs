using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ProjectEntities
{
   public class clsFlightFare
    {
            int flightfareid;
            int flightclsstatusid;
            int custstatusid;
            int fareid;
            int flightid;

            public clsFlightFare(int flightclsstatusid, int cid, int fareid, int flightid)
            {
                this.flightclsstatusid = flightclsstatusid;
                this.custstatusid = cid;
                this.fareid = fareid;
                this.flightid = flightid;

            }

           
            public int FlightFareId
            {
                get
                { 
                    return flightfareid;
                }
            }

            public int FlightClsStatusId
            {
                get
                {
                    return flightclsstatusid;
                }

                set
                {
                    flightclsstatusid = value;
                }

            }

            public int CustStatusId
            {
                get
                { 
                    return custstatusid;
                }

                set
                {
                    custstatusid = value;
                }
            }

            public int FareId
            {
                get
                { 
                    return fareid;
                }

                set
                {
                    fareid = value;

                }
            }

            public int FlightId
            {
                get
                { 
                    return flightid;
                }

                set
                {
                    flightid = value;

                }

            }

      }
 }

