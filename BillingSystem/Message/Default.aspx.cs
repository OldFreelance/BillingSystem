using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BillingSystem
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BillingEntities db=new BillingEntities();
            User user = db.Users.FirstOrDefault(s => s.Login == User.Identity.Name);
            MessageEntityDataSource.WhereParameters["UserToId"].DefaultValue = user.Id.ToString();
        }

        protected void btnWriteToAdmin_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Message/WriteTo.aspx?Id=1");
        }
    }
}