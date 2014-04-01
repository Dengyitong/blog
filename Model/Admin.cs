using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    public class Admin
    {
        /// <summary>
        /// 自动编号
        /// </summary>
        public int id { get; set; }
        /// <summary>
        /// 用户名
        /// </summary>
        public string name { get; set; }
        /// <summary>
        /// 密码
        /// </summary>
        public string password { get; set;}
        public Admin() {
            this.id = 0;
            this.name = string.Empty;
            this.password = string.Empty;
        }
        public Admin(object id, object name, object password) 
        {
            this.id = Convert.ToInt32(id);
            this.name = Convert.ToString(name);
            this.password = Convert.ToString(password);
        }
    }
}
