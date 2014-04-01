using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
   public class Article
    {
        /// <summary>
        /// 自动编号
        /// </summary>
        public int id {get;set; }
        /// <summary>
        /// 标题
        /// </summary>
        public string title { get; set; }
        /// <summary>
        /// 正文
        /// </summary>
        public string substance { get; set; }
        /// <summary>
        /// 图片地址
        /// </summary>
        public string imgurl { get; set; }
        /// <summary>
        /// 概要
        /// </summary>
        public string summary { get; set; }
        /// <summary>
        /// 作者
        /// </summary>
        public string autor { get; set; }
        /// <summary>
        /// 更新时间
        /// </summary>
        public DateTime update_time { get; set; }
        /// <summary>
        ///标签
        /// </summary>
        public string tags { get; set; }
        /// <summary>
        /// 评论次数
        /// </summary>
        public int comment { get; set; }
        /// <summary>
        /// 点击次数
        /// </summary>
        public int click { get; set; }

       public Article()
        {
            this.id = 0;
            this.title = string.Empty;
            this.substance = string.Empty;
            this.imgurl = string.Empty;
            this.summary = string.Empty;
            this.autor = string.Empty;
            this.update_time = DateTime.Now;
            this.tags = string.Empty;
            this.comment = 0;
            this.click = 0;
        }
       public Article(object id, object title, object substance, object imgurl,object summary, object autor, object update_time, object tags, object comment, object click)
       {
           this.id = Convert.ToInt32(id);
           this.title = Convert.ToString(title);
           this.substance = Convert.ToString(substance);
           this.imgurl = Convert.ToString(imgurl);
           this.summary = Convert.ToString(summary);
           this.autor = Convert.ToString(autor);
           this.update_time = Convert.ToDateTime(update_time);
           this.tags = Convert.ToString(tags);
           this.comment = Convert.ToInt32(comment);
           this.click = Convert.ToInt32(click);
       }
    }
}
