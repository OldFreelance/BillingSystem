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
            BillingEntityDataSource.Where = string.IsNullOrEmpty(txtName.Text)
                                                ? string.Empty
                                                : "it.Login LIKE '%" + txtName.Text + "%' OR " +
                                                  "it.FirstName LIKE '%" + txtName.Text + "%' OR " +
                                                  "it.MiddleName LIKE '%" + txtName.Text + "%' OR " +
                                                  "it.SecondName LIKE '%" + txtName.Text + "%' OR " +
                                                  "it.IpAddress LIKE '%" + txtName.Text + "%' OR " +
                                                  "it.Address LIKE '%" + txtName.Text + "%' OR " +
                                                  "it.Number LIKE '%" + txtName.Text + "%'";
        }
    }
}