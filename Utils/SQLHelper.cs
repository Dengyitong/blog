using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Configuration;

namespace Utils
{
    public class SQLHelper
    {
        private SqlConnection conn = null;
        private SqlCommand cmd = null;
        private SqlDataReader sdr = null;
        /// <summary>
        /// 默认方法;连接数据库
        /// </summary>
        public SQLHelper()
        {
            string strconn = ConfigurationManager.ConnectionStrings["dengyitong.dyt_blog.dbo"].ConnectionString;
            conn = new SqlConnection(strconn);
        }
        /// <summary>
        /// 打开数据库连接
        /// </summary>
        /// <returns></returns>
        private SqlConnection GetConn()
        {
            if (conn.State == ConnectionState.Closed) 
            {
                conn.Open();
            }
            return conn;
        }
        /// <summary>
        /// 关闭数据库连接
        /// </summary>
        private void OutConn()
        { 
            if(conn.State==ConnectionState.Open)
            {
                conn.Close();
            }
        }
        /// <summary>
        /// 
        /// 执行不带参数的增删改SQL语句或存储过程
        /// </summary>
        /// <param name="cmdText"></param>
        /// <param name="ct"></param>
        /// <returns></returns>
        public int ExecuteNoneQuery(string cmdText,CommandType ct)
        {
            int res;
            try
            {
                cmd = new SqlCommand(cmdText, GetConn());
                cmd.CommandType = ct;
                res = cmd.ExecuteNonQuery();
            }
            catch(Exception ex)
            {
                return 0;
            }
            finally
            {
                OutConn();
            }
            return res;
        }
        /// <summary>
        /// 执行带参数的增删改SQL语句或存储过程
        /// </summary>
        /// <param name="cmdText"></param>
        /// <param name="paras"></param>
        /// <param name="ct"></param>
        /// <returns></returns>
        public int ExecuteNoneQuery(string cmdText,SqlParameter[] paras,CommandType ct)
        {
            int res;
            try
            {
                cmd = new SqlCommand(cmdText, GetConn());
                cmd.CommandType=ct;
                cmd.Parameters.AddRange(paras);
                res=cmd.ExecuteNonQuery();
            }
            catch(Exception ex)
            {
                return 0;
            }
            finally
            {
                OutConn();
            }
            return res;
        }
        /// <summary>
        /// 执行不带参数的查询SQL语句或存储过程
        /// </summary>
        /// <param name="cmdText"></param>
        /// <param name="ct"></param>
        /// <returns></returns>
        public DataTable ExecuteQuery(string cmdText, CommandType ct)
        {
            DataTable dt = new DataTable();
            cmd = new SqlCommand(cmdText, GetConn());
            cmd.CommandType = ct;
            using(sdr=cmd.ExecuteReader(CommandBehavior.CloseConnection))
            {
                dt.Load(sdr);
            }
            return dt;
        }
        /// <summary>
        /// 执行带参数的查询SQL语句或存储过程
        /// </summary>
        /// <param name="cmdText"></param>
        /// <param name="paras"></param>
        /// <param name="ct"></param>
        /// <returns></returns>
        public DataTable ExecuteQuery(string cmdText, SqlParameter[] paras, CommandType ct)
        {
            DataTable dt = new DataTable();
            cmd = new SqlCommand(cmdText, GetConn());
            cmd.Parameters.AddRange(paras);
            using(sdr = cmd.ExecuteReader(CommandBehavior.CloseConnection))
            {
                dt.Load(sdr);
            }
            return dt;
        }
    }
}
