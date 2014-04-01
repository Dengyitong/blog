using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    public class Link
    {
         /// <summary>
        /// 自动编号
        /// </summary>
        public int id { get; set; }
        /// <summary>
        /// 网站名称
        /// </summary>
        public string name { get; set; }
        /// <summary>
        /// 网址
        /// </summary>
        public string wed { get; set;}
        public Link() {
            this.id = 0;
            this.name = string.Empty;
            this.wed = string.Empty;
        }
        public Link(object id, object name, object wed) 
        {
            this.id = Convert.ToInt32(id);
            this.name = Convert.ToString(name);
            this.wed = Convert.ToString(wed);
        }
    }
}
