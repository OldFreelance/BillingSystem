using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BillingSystem
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            EntityDataSource1.WhereParameters["Username"].DefaultValue = HttpContext.Current.User.Identity.Name;


            if(User.Identity.IsAuthenticated)
            {
                BillingEntities db=new BillingEntities();
                User user = db.Users.FirstOrDefault(s => s.Login == User.Identity.Name);
                lblInternetDisabled.Visible = user!=null && !user.IsAllow;
            }
            else
            {
                lblInternetDisabled.Visible = false;
            }
        }

        protected void btnPrint_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Images/formpd4.png");
        }
    }
}
