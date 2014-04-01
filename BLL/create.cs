using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;

using System.Data.SqlClient;

namespace BLL
{
    public class create
    {
        /// <summary>
        /// 添加用户
        /// </summary>
        /// <param name="name"></param>
        /// <param name="password"></param>
        /// <returns></returns>
        static public int Amin(string name,string password)
        {
            Utils.SQLHelper db = new Utils.SQLHelper();
            string sql = "insert into user_table(name,password) values(@name,@password)";
            SqlParameter[] ps ={
                                new SqlParameter("name",SqlDbType.NVarChar,10),
                                new SqlParameter("password",SqlDbType.NVarChar,255)
                              };
            ps[0].Value=name;
            ps[1].Value=Utils.Tools.SHA256Encrypt( password);
            return db.ExecuteNoneQuery(sql, ps, CommandType.Text);
        }
        ///添加文章
        static public int Article(string title, string substance, string imgurl, string summary, string autor, DateTime update_time, string tags)
        {
            Utils.SQLHelper db = new Utils.SQLHelper();
            string sql = "insert into log_table (title,substance,imgurl,summary,autor,update_time,tags) values(@title,@substance,@imgurl,@summary,@autor,@update_time,@tags)";
            SqlParameter[] ps ={
                                new SqlParameter("title",SqlDbType.NVarChar,255),
                                new SqlParameter("substance",SqlDbType.NVarChar,int.MaxValue),
                                new SqlParameter("imgurl",SqlDbType.NVarChar,int.MaxValue),
                                new SqlParameter("summary",SqlDbType.NVarChar,int.MaxValue),
                                new SqlParameter("autor",SqlDbType.NVarChar,10),
                                new SqlParameter("update_time",SqlDbType.DateTime),
                                new SqlParameter("tags",SqlDbType.NVarChar,50)
                               };
            ps[0].Value=title;
            ps[1].Value=substance;
            ps[2].Value = imgurl;
            ps[3].Value = summary;
            ps[4].Value=autor;
            ps[5].Value = Convert.ToDateTime(update_time);
            ps[6].Value=tags;
            return db.ExecuteNoneQuery(sql, ps, CommandType.Text);
        }
        static public int Link(string name, string wed)
        {
            Utils.SQLHelper db = new Utils.SQLHelper();
            string sql = "insert into link_table(name,wed) values(@name,@wed)";
            SqlParameter[] ps ={
                                new SqlParameter("name",SqlDbType.NVarChar,50),
                                new SqlParameter("wed",SqlDbType.NVarChar,50)
                              };
            ps[0].Value = name;
            ps[1].Value = wed;
            return db.ExecuteNoneQuery(sql, ps, CommandType.Text);
        }
    }
}
