using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    public class Year
    {
         /// <summary>
        ///年份
        /// </summary>
      public int year {get;set; }
     
       public Year()
        {
            this.year =0;
        }
       public Year(object year)
       {
           this.year = Convert.ToInt32(year);
       }
    }
}
