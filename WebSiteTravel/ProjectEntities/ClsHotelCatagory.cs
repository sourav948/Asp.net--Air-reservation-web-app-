using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ProjectEntities
{
   public class ClsHotelCatagory
    {
       int hotelCatId;
       string hotelCatName;

       public ClsHotelCatagory(string hotelCatName)
       {
       
           this.hotelCatName = hotelCatName;
       }
       public int HotelCatId
       {
           get
           {
               return hotelCatId;
           }
       }
       public string HotelCatName
       {
           get
           {
               return hotelCatName;
           }
           set
           {
               hotelCatName = value;
           }
       }
    }
}
