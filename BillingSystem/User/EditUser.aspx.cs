using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BillingSystem
{
    public partial class EditUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            FormView1.ChangeMode(Request.Params["Id"]=="0"?FormViewMode.Insert:FormViewMode.Edit);
            //FormView1.FindControl("UpdateButton").Visible = false;
            //FormView1.FindControl("Cancel").Visible = false;
        }

        protected void FormView1_ItemCommand(object sender, FormViewCommandEventArgs e)
        {
            switch (e.CommandName)
            {
                case "Cancel":
                    Response.Redirect("Default.aspx");
                    break;
                case "Update":
                    if(FormView1.CurrentMode == FormViewMode.Edit)
                        FormView1.UpdateItem(true);
                    else
                        FormView1.InsertItem(true);
                    Response.Redirect("Default.aspx");
                    break;
            }
        }

        protected void FormView1_DataBound(object sender, EventArgs e)
        {
            User drv = (User)FormView1.DataItem;
            if (drv != null)
            {
                DropDownList cmbTariff = (DropDownList) FormView1.FindControl("TariffIdDropDownList");
                //if (drv.TariffId)
                    cmbTariff.SelectedValue = drv.TariffId.ToString();
                //else
                    //cmbTariff.SelectedIndex = -1;
            }
        }

        protected void FormView1_ItemUpdating(object sender, FormViewUpdateEventArgs e)
        {
            int tariffId = int.Parse(((DropDownList)FormView1.FindControl("TariffIdDropDownList")).SelectedValue);
            e.NewValues.Add("TariffId", tariffId);

            TextBox balanceTextBox = ((TextBox)FormView1.FindControl("BalanceTextBox"));
            if (balanceTextBox.Text == "")
                e.NewValues["Balance"] = (decimal?)0;
        }

        protected void FormView1_ItemInserting(object sender, FormViewInsertEventArgs e)
        {
            int tariffId = int.Parse(((DropDownList)FormView1.FindControl("TariffIdDropDownList")).SelectedValue);
            e.Values.Add("TariffId", tariffId);

            TextBox balanceTextBox = ((TextBox)FormView1.FindControl("BalanceTextBox"));
            if (balanceTextBox.Text == "")
                e.Values["Balance"] = (decimal?)0;
        }
    }
}