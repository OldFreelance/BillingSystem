using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BillingSystem
{
    public partial class DeleteUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = int.Parse(Request.Params["Id"]);
            BillingEntities db=new BillingEntities();
            db.Users.DeleteObject(db.Users.FirstOrDefault(s => s.Id == id));
            db.SaveChanges();
            Response.Redirect("");
        }
    }
}