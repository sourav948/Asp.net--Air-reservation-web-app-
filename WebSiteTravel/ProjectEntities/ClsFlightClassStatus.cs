using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ProjectEntities
{
   public class ClsFlightClassStatus
    {
        int flightclassstatusid;
       string flightclassstatusname;

       public ClsFlightClassStatus(string flightclassstatusname)
       {
           this.flightclassstatusname = flightclassstatusname;
       }
       public int FlightClassStatusId
       {
           get
           {
               return flightclassstatusid;
           }
       }
       public string FlightClassStatusName
       {
           get
           {
               return flightclassstatusname;
           }
           set
           {
               flightclassstatusname = value;
           }
       
       }
    }
}
