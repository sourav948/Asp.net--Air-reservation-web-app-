using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ProjectEntities
{
   public class ClsFlightRoute
    {
         int flightrouteid;
        string departuretime;
        string arrivaltime;
        string flightdays;
        int flightid;
        string source;
        string destination;

        public ClsFlightRoute(string departuretime, string arrivaltime, string flightdays,int flightid,string source,string destination)
        {
            this.departuretime = departuretime;
            this.arrivaltime = arrivaltime;
            this.flightdays = flightdays;
            this.flightid = flightid;
            this.source = source;
            this.destination = destination;

        }

        public int FlightRouteId
        {
            get
            {
                return flightrouteid;
            }
        }

        public string Source
        {
            get
            {
                return source;
            }
            set
            {
                source = value;
            }
        }

        public string Destination
        {
            get
            {
                return destination;
            }
            set
            {
                destination = value;
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

        public string DepartureTime
        {
            get
            {
                return departuretime;
            }
            set
            {
                departuretime = value;
            }
        }

        public string ArrivalTime
        {
            get
            {
                return arrivaltime;
            }
            set
            {
                arrivaltime = value;
            }
        }

        public string FlightDays
        {
            get
            {
                return flightdays;
            }
            set
            {
                flightdays = value;
            }
        }

    }
}
