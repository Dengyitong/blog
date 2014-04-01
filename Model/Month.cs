using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
  public class Month
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
        ///文章数目
        /// </summary>
      public int sum_log {get;set; }
     
     
       public Month()
        {
            this.year =0;
            this.month = 0;
            this.sum_log = 0;
        }
       public Month(object year, object month, object sum_log)
       {
           this.year = Convert.ToInt32(year);
           this.month = Convert.ToInt32(month);
           this.sum_log = Convert.ToInt32(sum_log);
       }
    }
}
