using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Text;

namespace BLL
{
    public class GetList
    {
        /// <summary>
        /// 查询所有用户
        /// </summary>
        /// <returns></returns>
        static public List<Model.Admin>Admin()
        {
            Utils.SQLHelper db = new Utils.SQLHelper();
            string sql = "select * from user_table";
            DataTable dt = db.ExecuteQuery(sql, System.Data.CommandType.Text);

            List<Model.Admin> ret = new List<Model.Admin>();

            for(int i=0;i<dt.Rows.Count;i++)
            {
                ret.Add(new Model.Admin(dt.Rows[i][0],dt.Rows[i][1],dt.Rows[i][2]));
            }
            return ret;
        }
        /// <summary>
        /// 查询所有文章
        /// </summary>
        /// <returns></returns>
        static public List<Model.Article>Article()
        {
            Utils.SQLHelper db = new Utils.SQLHelper();
            string sql = "select * from log_table";
            DataTable dt = db.ExecuteQuery(sql, System.Data.CommandType.Text);

            List<Model.Article> ret = new List<Model.Article>();

            for(int i=0;i<dt.Rows.Count;i++)
            {
                ret.Add(new Model.Article(dt.Rows[i][0], dt.Rows[i][1], dt.Rows[i][2], dt.Rows[i][3], dt.Rows[i][4], dt.Rows[i][5], dt.Rows[i][6], dt.Rows[i][7], dt.Rows[i][8], dt.Rows[i][9]));

            }
            return ret;
        }
        /// <summary>
        /// 查询近期文章
        /// </summary>
        /// <returns></returns>
        static public List<Model.HotArticle> HotArticle()
        {
            Utils.SQLHelper db = new Utils.SQLHelper();
            string sql = "select top 10 id ,title from log_table order by update_time desc";
            DataTable dt = db.ExecuteQuery(sql, System.Data.CommandType.Text);

            List<Model.HotArticle> ret = new List<Model.HotArticle>();

            for (int i = 0; i < dt.Rows.Count; i++)
            {
                ret.Add(new Model.HotArticle(dt.Rows[i][0], dt.Rows[i][1]));

            }
            return ret;
        }
        /// <summary>
        /// 查询热门文章
        /// </summary>
        /// <returns></returns>
        static public List<Model.HotArticle> NewArticle()
        {
            Utils.SQLHelper db = new Utils.SQLHelper();
            string sql = "select top 5 id ,title from log_table order by click desc";
            DataTable dt = db.ExecuteQuery(sql, System.Data.CommandType.Text);

            List<Model.HotArticle> ret = new List<Model.HotArticle>();

            for (int i = 0; i < dt.Rows.Count; i++)
            {
                ret.Add(new Model.HotArticle(dt.Rows[i][0], dt.Rows[i][1]));

            }
            return ret;
        }
        /// <summary>
        /// 查询年份
        /// </summary>
        /// <returns></returns>
        static public List<Model.Year> Year()
        {
            Utils.SQLHelper db = new Utils.SQLHelper();
            string sql = "select DATEPART(year,update_time) as year from log_table group by DATEPART(YEAR,update_time)";
            DataTable dt = db.ExecuteQuery(sql, System.Data.CommandType.Text);
            List<Model.Year> ret = new List<Model.Year>();

            for (int i = 0; i < dt.Rows.Count; i++)
            {
                ret.Add(new Model.Year(dt.Rows[i][0]));
            }
            return ret;
        }
        /// <summary>
        /// 查询月份
        /// </summary>
        /// <returns></returns>
        static public List<Model.Month> Month()
        {
            Utils.SQLHelper db = new Utils.SQLHelper();
            string sql = "select DATEPART(year,update_time) as year, DATEPART(MONTH,update_time) as month,count(Id) as sum_log from log_table group by DATEPART(YEAR,update_time),DATEPART(MONTH,update_time)";
            DataTable dt = db.ExecuteQuery(sql, System.Data.CommandType.Text);
            List<Model.Month> ret = new List<Model.Month>();

            for (int i = 0; i < dt.Rows.Count; i++)
            {
                ret.Add(new Model.Month(dt.Rows[i][0], dt.Rows[i][1], dt.Rows[i][2]));
            }
            return ret;
        }
        /// <summary>
        /// 查询日份和文章
        /// </summary>
        /// <returns></returns>
        static public List<Model.Day> Day()
        {
            Utils.SQLHelper db = new Utils.SQLHelper();
            string sql = "select DATEPART(year,update_time) as year, DATEPART(MONTH,update_time) as month,DATEPART(DAY,update_time) as day,title,Id from log_table group by DATEPART(YEAR,update_time),DATEPART(MONTH,update_time),DATEPART(DAY,update_time),title,Id";
            DataTable dt = db.ExecuteQuery(sql, System.Data.CommandType.Text);
            List<Model.Day> ret = new List<Model.Day>();

            for (int i = 0; i < dt.Rows.Count; i++)
            {
                ret.Add(new Model.Day(dt.Rows[i][0], dt.Rows[i][1], dt.Rows[i][2], dt.Rows[i][3],dt.Rows[i][4]));
            }
            return ret;
        }
       /// <summary>
       /// 查询所有链接
       /// </summary>
       /// <returns></returns>
        static public List<Model.Link>Link()
        {
            Utils.SQLHelper db = new Utils.SQLHelper();
            string sql = "select * from link_table";
            DataTable dt = db.ExecuteQuery(sql, System.Data.CommandType.Text);

            List<Model.Link> ret = new List<Model.Link>();

            for (int i = 0; i < dt.Rows.Count; i++)
            {
                ret.Add(new Model.Link(dt.Rows[i][0], dt.Rows[i][1], dt.Rows[i][2]));
            }
            return ret;
        }
    }
}
