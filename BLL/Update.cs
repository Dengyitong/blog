using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace BLL
{
   public class Update
    {
       static public int Adim(string name,string password,string Id)
       {
           Utils.SQLHelper db=new Utils.SQLHelper ();
           string sql="update user_table set name=@name,password=@password where Id=@Id";
           SqlParameter[] ps={
                                  new SqlParameter("name",SqlDbType.NVarChar,10),
                                  new SqlParameter("password",SqlDbType.NVarChar,255),
                                  new SqlParameter("Id",SqlDbType.Int)   
                             };
           ps[0].Value=name;
           ps[1].Value=Utils.Tools.SHA256Encrypt( password);
           ps[2].Value=Convert.ToInt32(Id);
           return db.ExecuteNoneQuery(sql,ps,CommandType.Text);
       }
       static public int Article(string title, string substance, string imgurl, string summary, string autor, string tags, string Id)
       {
           Utils.SQLHelper db = new Utils.SQLHelper();
           string sql = "update log_table set title=@title,substance=@substance,imgurl=@imgurl,summary=@summary,autor=@autor,tags=@tags where Id=@Id";
           SqlParameter[] ps ={
                                 new SqlParameter("title",SqlDbType.NVarChar,255),
                                 new SqlParameter("substance",SqlDbType.NVarChar,int.MaxValue),
                                 new SqlParameter("imgurl",SqlDbType.NVarChar,int.MaxValue),
                                 new SqlParameter("summary",SqlDbType.NVarChar,int.MaxValue),
                                 new SqlParameter("autor",SqlDbType.NVarChar,10),
                                 new SqlParameter("tags",SqlDbType.NVarChar,50),
                                 new SqlParameter("Id",SqlDbType.Int)
                             };
           ps[0].Value=title;
           ps[1].Value=substance;
           ps[2].Value = imgurl;
           ps[3].Value = summary;
           ps[4].Value=autor;
           ps[5].Value=tags;
           ps[6].Value=Convert.ToInt32(Id);
           return db.ExecuteNoneQuery(sql, ps, CommandType.Text);
       }
       static public int Link(string name, string wed, string Id)
       {
           Utils.SQLHelper db = new Utils.SQLHelper();
           string sql = "update link_table set name=@name,wed=@wed where Id=@Id";
           SqlParameter[] ps ={
                                  new SqlParameter("name",SqlDbType.NVarChar,50),
                                  new SqlParameter("wed",SqlDbType.NVarChar,50),
                                  new SqlParameter("Id",SqlDbType.Int)   
                             };
           ps[0].Value = name;
           ps[1].Value = wed;
           ps[2].Value = Convert.ToInt32(Id);
           return db.ExecuteNoneQuery(sql, ps, CommandType.Text);
       }
    }
}
