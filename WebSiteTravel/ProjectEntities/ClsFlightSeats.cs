using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
// InsertFlightSeats(@TotalSeats int,@FlightClassStatusId  int,@Source varchar(20),@destination varchar(20),@flightId int )

namespace ProjectEntities
{
    public class ClsFlightSeats
    {
            int totalSeats;
            int flightClassStatusId;
            string source;
            string destination;
            int flightid;

            public ClsFlightSeats()
            {
            }
            public ClsFlightSeats(int totalSeats, int flightClassStatusId, string source, string destination, int flightid)
            {
                this.totalSeats = totalSeats;
                this.flightClassStatusId = flightClassStatusId;
                this.source = source;
                this.destination = destination;
                this.flightid = flightid;

            }

            public int TotalSeats
            {
                get
                {
                    return totalSeats;
                }
                set
                {
                    totalSeats = value;
                }
            }

            public int FlightClassStatusId
            {
                get
                {
                    return flightClassStatusId;
                }

                set
                {
                    flightClassStatusId = value;

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


    }
}
