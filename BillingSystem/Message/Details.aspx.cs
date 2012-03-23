using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BillingSystem
{
    public partial class Details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BillingEntities db=new BillingEntities();
            int id = int.Parse(Request.Params["Id"]);
            Message message = db.Messages.FirstOrDefault(s => s.Id == id);
            if (message != null)
            {
                message.IsReaded = true;
                db.SaveChanges();
            }
        }
    }
}