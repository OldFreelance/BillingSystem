using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BillingSystem
{
    public partial class SiteMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Remove users menu item
            if(!HttpContext.Current.User.IsInRole("Admin"))
                NavigationMenu.Items.Remove(NavigationMenu.Items[2]);
        }

        protected void Page_PreRender(object sender, EventArgs e)
        {
            //Set localize combobox value
            if (HttpContext.Current.Session != null)
            {
                switch (((CultureInfo)this.Session["Culture"]).Name)
                {
                    case "ru-RU":
                        LocalizeDropDownList.SelectedIndex = 0;
                        break;
                    case "lv-LV":
                        LocalizeDropDownList.SelectedIndex = 1;
                        break;
                }
            }
        }

        protected void LocalizeDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["Culture"] = new CultureInfo(LocalizeDropDownList.SelectedValue);
            Response.Redirect(Request.RawUrl);
        }
    }
}
