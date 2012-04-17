using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BillingSystem
{
    public partial class Users : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string search = txtName.Text.Replace(";", string.Empty).Replace(",", string.Empty).Replace("(", string.Empty).Replace(")", string.Empty);

            BillingEntityDataSource.Where = string.IsNullOrEmpty(search)
                                                ? string.Empty
                                                : "it.Login LIKE '%" + search + "%' OR " +
                                                  "it.FirstName LIKE '%" + search + "%' OR " +
                                                  "it.MiddleName LIKE '%" + search + "%' OR " +
                                                  "it.SecondName LIKE '%" + search + "%' OR " +
                                                  "it.IpAddress LIKE '%" + search + "%' OR " +
                                                  "it.Address LIKE '%" + search + "%' OR " +
                                                  "it.Number LIKE '%" + search + "%'";
        }
    }
}