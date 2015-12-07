using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

/*PNRStatusId int ,
CustomerId int references tblCustomers,
FlightSeatsId int references tblFlightSeats,
FlightFareId int references tblFlightFare,
FlightRouteId int references tblFlightRoutes, 
DateOfBooking datetime,
primary key(CustomerId,PNRStatusId,FlightSeatsId)*/

namespace ProjectEntities
{
    public class ClsFlightBooking
    {
        int PNRstatusid;
        int customerid;
        int flightseatsid;
        int flightfareid;
        int flightrouteid;
        DateTime dob;

        public ClsFlightBooking(int PNRstatusid, int customerid, int flightseatsid, int flightfareid, int flightrouteid,DateTime dob)
        {
            this.PNRstatusid = PNRstatusid;
            this.customerid = customerid;
            this.flightseatsid = flightseatsid;
            this.flightfareid = flightfareid;
            this.flightrouteid = flightrouteid;
            this.dob = dob;
        }
        public int PNRStatusId
        {
            get
            {
                return PNRstatusid;
            }
            set
            {
                PNRstatusid = value;
            }
        }
        public int CustomerId
        {
            get
            {
                return customerid;
            }
            set
            {
                customerid = value;
            }
        }
        public int FlightSeatsId
        {
            get
            {
                return flightseatsid;
            }
            set
            {
                flightseatsid = value;
            }
        }
        public int FlightFareId
        {
            get
            {
                return flightfareid;
            }
            set
            {
                flightfareid = value;
            }
        }
        public int FlightRouteId
        {
            get
            {
                return flightrouteid;
            }
            set
            {
                flightrouteid = value;
            }
        }
        public DateTime DateOfBooking
        {
            get
            {
                return dob;
            }
            set
            {
                dob = value;
            }
        }
    }
}
