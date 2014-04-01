using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
   public class HotArticle
    {
        /// <summary>
        /// 自动编号
        /// </summary>
        public int id {get;set; }
        /// <summary>
        /// 标题
        /// </summary>
        public string title { get; set; }
      
       public HotArticle()
        {
            this.id = 0;
            this.title = string.Empty;
        }
       public HotArticle(object id,object title)
       {
           this.id = Convert.ToInt32(id);
           this.title = Convert.ToString(title);
       }
    }
}
