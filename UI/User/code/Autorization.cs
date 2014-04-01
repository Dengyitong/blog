using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text;
using System.Threading.Tasks;
using System.Text.RegularExpressions;

namespace UI.User.code
{
    public class Autorization
    {
        /// <summary>
        /// 登录判断
        /// </summary>
        /// <param name="role"></param>
        /// <returns></returns>
        public static string check(object admin)
        {
            if (admin == null)
            {
                return "未登或登录超时";
            }
            return "ACCEPT";
        }

    }
}