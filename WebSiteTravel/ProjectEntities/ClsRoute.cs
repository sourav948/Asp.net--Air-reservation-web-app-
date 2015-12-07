using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ProjectEntities
{
    public class ClsRoute
    {

        int RouteId;
        string source;
        string Destination;

        public ClsRoute(string source, string Destination)
        {
            this.source = source;
            this.Destination = Destination;
        }

        public int routid
        {
            get
            {
                return RouteId;
            }
 
        }

        public string destination
        {
            get
            {
                return Destination;
            }
            set
            {
                Destination = value;
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
    }
}
