using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ProjectEntities
{
    public class ClsHotelRoom
    {
        int hotelId;
        int roomCatId;
        int roomNO;
        public ClsHotelRoom(int hotelId, int roomCatId, int roomNo)
        {
            this.hotelId = hotelId;
            this.roomCatId = roomCatId;
            this.roomNO = roomNo;
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
                roomCatId = value;
            }
        }

        public int RoomNO
        {
            get
            {
                return roomNO;
            }
            set
            {
                roomNO = value;
            }
        }

    }
}
