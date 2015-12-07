using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ProjectEntities
{
  public class ClsRoomCategory
    {
      int roomCatId;
      string roomCatName;
      public ClsRoomCategory(string roomCatName)
      {
          this.roomCatName = roomCatName;
      }
      public int RoomCatId
      {
          get
          {
              return roomCatId;
          }
      }

      public string RoomCatName
      {
          get
          {
              return roomCatName;
          }
          set
          {
              roomCatName = value;
          }
      }
    }
}
