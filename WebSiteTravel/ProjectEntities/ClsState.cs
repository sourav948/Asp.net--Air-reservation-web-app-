using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ProjectEntities
{
   public class ClsState
    {
       int StateId;
       string StateName;
       int CountryId;
       public ClsState()
       { }
       public ClsState(string statename, int contryid)
       {
           this.StateName = statename;
           this.CountryId = contryid;
       }
       public int stateid
       {
           get
           {
               return StateId;
           }
       }
       public string statename
       {
           get
           {
               return StateName;
           }
           set
           {
               StateName = value;
           }
       }
       public int countryid
       {
           get
           {
               return CountryId;
           }
           set
           {
               CountryId = value;
           }
       }
    }
}
