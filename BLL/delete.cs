using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace BLL
{
    public class delete
    {
        static public int ByTableNameAndId(string tableName,string Id)
        {
            Utils.SQLHelper db = new Utils.SQLHelper();
            string sql = string.Format("delete from {0} where Id=@Id",tableName);
            SqlParameter[] ps ={
                                new SqlParameter("Id",SqlDbType.Int)
                              };
            ps[0].Value=Convert.ToInt32(Id);
            return db.ExecuteNoneQuery(sql,ps,CommandType.Text);
        }
    }
}
