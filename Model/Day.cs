using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
   public class Day
    {
       
        /// <summary>
        ///年份
        /// </summary>
       public int year { get; set; }
      /// <summary>
        ///月份
        /// </summary>
      public int month {get;set; }
         /// <summary>
        ///日份
        /// </summary>
      public int day {get;set; }
      /// <summary>
      ///标题
      /// </summary>
      public string title { get; set; }
       /// <summary>
       /// ID
       /// </summary>
      public int Id { get; set; }

     
     
       public Day()
        {
            this.year =0;
            this.month = 0;
            this.day = 0;
            this.title = string.Empty;
            this.Id = 0;
        }
       public Day(object year, object month, object day,object title,object Id)
       {
           this.year = Convert.ToInt32(year);
           this.month = Convert.ToInt32(month);
           this.day = Convert.ToInt32(day);
           this.title = Convert.ToString(title);
           this.Id = Convert.ToInt32(Id);
       }
    }
}
