using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ProjectEntities
{
   public class ClsRoomFare
    {
  
       
       int hotelId;
       int roomCatId;
       int roomFare;
       public ClsRoomFare(int hotelId, int roomCatId, int roomFare)
       {
           this.hotelId = hotelId;
           this.roomCatId = roomCatId;
           this.roomFare = roomFare;
       }
       public int HotelId
       {
           get
           {
               return hotelId;
           }
           set
           {
               hotelId = value;
           }
       }

       public int RoomCatId
       {
           get
           {
               return roomCatId;
           }
           set
           {
               roomCatId= value;
           }
       }

       public int RoomFare
       {
           get
           {
               return roomFare;
           }
           set
           {
               roomFare= value;
           }
       }
    }
}
