using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Threading.Tasks;

namespace BLL
{
    public class GetOne
    {
        /// <summary>
        /// 查询一个用户
        /// </summary>
        /// <param name="Id"></param>
        /// <returns></returns>
        static public Model.Admin Admin(string Id)
        {
            Utils.SQLHelper db = new Utils.SQLHelper();
            string sql = "select * from user_table where Id=@Id";
            SqlParameter[] ps={
                                  new SqlParameter("Id",SqlDbType.Int)
                              };
            ps[0].Value=Convert.ToInt32(Id);
            DataTable dt=db.ExecuteQuery(sql,ps,System.Data.CommandType.Text);
            if(dt.Rows.Count>0)
            {
                return new Model.Admin(dt.Rows[0][0],dt.Rows[0][1],dt.Rows[0][2]);
            }
            return null;
        }
      static public Model.Admin Admin(string name, string password)
        {
            SqlParameter[] parameters = {
                                             new SqlParameter("name", SqlDbType.NVarChar, 10),
                                             new SqlParameter("password", SqlDbType.NVarChar, 255)
                                         };
            parameters[0].Value = name;
            parameters[1].Value =Utils.Tools.SHA256Encrypt( password);
            Utils.SQLHelper db = new Utils.SQLHelper();
            DataTable dt = db.ExecuteQuery("select * from user_table where name=@name and password=@password", parameters, CommandType.Text);
            if (dt != null && dt.Rows.Count > 0)
            {
                return new Model.Admin(dt.Rows[0][0], dt.Rows[0][1], dt.Rows[0][2]);
            }
            return null;
        }
        /// <summary>
        /// 查询一篇文章
        /// </summary>
        /// <param name="Id"></param>
        /// <returns></returns>
        static public Model.Article Article(string Id)
        {
            Utils.SQLHelper db = new Utils.SQLHelper();
            string sql = "select * from log_table where Id=@Id";
            SqlParameter[] ps ={
                                  new SqlParameter("Id",SqlDbType.Int)
                              };
            ps[0].Value = Convert.ToInt32(Id);
            DataTable dt = db.ExecuteQuery(sql, ps, System.Data.CommandType.Text);
            if(dt.Rows.Count>0)
            {
                return new Model.Article(dt.Rows[0][0], dt.Rows[0][1], dt.Rows[0][2], dt.Rows[0][3], dt.Rows[0][4], dt.Rows[0][5], dt.Rows[0][6], dt.Rows[0][7], dt.Rows[0][8], dt.Rows[0][9]);
            }
            return null;
        }
        /// <summary>
        /// 查询一个链接
        /// </summary>
        /// <param name="Id"></param>
        /// <returns></returns>
        static public Model.Link Link(string Id)
        {
            Utils.SQLHelper db = new Utils.SQLHelper();
            string sql = "select * from link_table where Id=@Id";
            SqlParameter[] ps ={
                                  new SqlParameter("Id",SqlDbType.Int)
                              };
            ps[0].Value = Convert.ToInt32(Id);
            DataTable dt = db.ExecuteQuery(sql, ps, System.Data.CommandType.Text);
            if (dt.Rows.Count > 0)
            {
                return new Model.Link(dt.Rows[0][0], dt.Rows[0][1], dt.Rows[0][2]);
            }
            return null;
        }
    }
}
