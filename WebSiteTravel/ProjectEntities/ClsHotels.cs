using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ProjectEntities
{
    public class ClsHotels
    {
        int hotelId;
        string hotelName;
        string location;
        string hotelUrl;
        string hotelFeatures;
        int hotelCatId;
        string hotelContactNo;
        string hotelpic;
        int cityId;
        public ClsHotels(string hotelName, string location, string hotelUrl, string hotelFeatures, int hotelCatId, string hotelContactNo,string hotelpic,int cityId)
        {
            this.hotelName = hotelName;
            this.location = location;
            this.hotelUrl = hotelUrl;
            this.hotelFeatures = hotelFeatures;
            this.hotelCatId = hotelCatId;
            this.hotelContactNo = hotelContactNo;
            this.hotelpic = hotelpic;
            this.cityId = cityId;
        }
        public int HotelId
        {
            get
            {
                return hotelId;
             }
        }
        public string HotelName
        {
            get
            {
                return hotelName;
            }
            set
            {
                hotelName = value;
            }
        }
        public string Location
        {
            get
            {
                return location;
            }
            set
            {
                location = value;
            }
        }

        public string HotelUrl
        {
            get
            {
                return hotelUrl;
            }
            set
            {
             hotelUrl =value;
            }
        }

        public int HotelCatId
        {
            get
            {
                return hotelCatId;
            }
            set
            {
                hotelCatId= value;
            }
        }

        public string HotelFeatures
        {
            get
            {
                return hotelFeatures;
            }
            set
            {
               hotelFeatures = value;
            }
        }

        public string HotelContactNo
        {
            get
            {
                return hotelContactNo;
            }
            set
            {
                hotelContactNo= value;
            }
        }

        public string HotelPic
        {
            get
            {
                return hotelpic;
            }
            set
            {
                hotelpic = value;
            }
        }

        public int CityId
        {
            get
            {
                return cityId;
            }
            set
            {
                cityId= value;
            }
        }


    }
}
