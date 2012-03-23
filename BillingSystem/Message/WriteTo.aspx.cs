using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BillingSystem
{
    public partial class WriteTo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void FormView1_ItemCommand(object sender, FormViewCommandEventArgs e)
        {
            switch (e.CommandName)
            {
                case "Cancel":
                    Response.Redirect("Default.aspx");
                    break;
                case "Send":
                    FormView1.InsertItem(true);
                    Response.Redirect("Default.aspx");
                    break;
            }
        }

        protected void FormView1_ItemInserting(object sender, FormViewInsertEventArgs e)
        {
            BillingEntities db=new BillingEntities();
            User user = db.Users.FirstOrDefault(s => s.Login == User.Identity.Name);
            e.Values.Add("UserFromId", user.Id);
            e.Values.Add("UserToId", int.Parse(Request.Params["Id"]));
            e.Values.Add("IsReaded", false);
        }
    }
}