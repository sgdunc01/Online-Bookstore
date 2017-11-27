using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment1
{
    public partial class Purchase : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (!IsPostBack)
            {
                BookDDL.Items.Add("Introduction to MIS");
                BookDDL.Items.Add("Introduction to Marketing");
                BookDDL.Items.Add("Introduction to Finance");
            }
        }

        protected void PurchaseBtn_Click(object sender, EventArgs e)
        {
            double price = bookPrice(BookDDL.SelectedValue) * int.Parse(QuantityText.Text);
            BookLbl.Text = "You have selected to purchase"+ QuantityText.Text + " of " + BookDDL.SelectedValue + ". The price is: " + price.ToString("C") + ".";
        }

        private double bookPrice(string selectedValue)
        {
            if (selectedValue == "Introduction to MIS")
            {
                return 20;
            }
            else if (selectedValue == "Introduction to Finance")
            {
                return 30;
            }
            else
                return 40;
        }
    }
}