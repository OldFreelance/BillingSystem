using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BillingSystem.Account
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //RegisterHyperLink.NavigateUrl = "Register.aspx?ReturnUrl=" + HttpUtility.UrlEncode(Request.QueryString["ReturnUrl"]);
        }

        protected void LoginUser_LoggedIn(object sender, EventArgs e)
        {
            var loginForm = (System.Web.UI.WebControls.Login)sender;
            BillingEntities db = new BillingEntities();
            User user = db.Users.FirstOrDefault(s => s.Login.ToLower() == loginForm.UserName.ToLower());
            if (user == null) return;

            db.UsersLogs.AddObject(new UsersLog
                                       {
                                           Date = DateTime.Now,
                                           Text = "User logged in from Ip " + Request.UserHostAddress,
                                           UserId = user.Id
                                       });
            user.IpAddress = Request.UserHostAddress;

            db.SaveChanges();
        }
    }
}
    ;