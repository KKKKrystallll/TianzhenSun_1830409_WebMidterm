using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TianzhenSun_1830409_WebMidterm
{
    public partial class webHondi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            panOrder.Visible = panPricing.Visible = false;

            if (!Page.IsPostBack)
            {
                txtNumber.Visible = lblNumber.Visible = false;

                cboModel.Items.Add(new ListItem("Civoc", "25000"));
                cboModel.Items.Add(new ListItem("DR.V", "30000"));
                cboModel.Items.Add(new ListItem("Appord", "33000"));
                cboModel.Items.Add(new ListItem("Cilot", "45000"));
                cboModel.Items.Add(new ListItem("Odyrrey", "54000"));

                lstCarColour.Items.Add(new ListItem("White", "0"));
                lstCarColour.Items.Add(new ListItem("Dark", "300"));
                lstCarColour.Items.Add(new ListItem("Pearl", "900"));

                lstCarColour.SelectedIndex = 0;

                chklstAccessories.Items.Add(new ListItem("Aero Kit", "1300"));
                chklstAccessories.Items.Add(new ListItem("Film", "600"));
                chklstAccessories.Items.Add(new ListItem("Cold Weather", "900"));
                chklstAccessories.Items.Add(new ListItem("Hondi Emblem", "150"));
                chklstAccessories.Items.Add(new ListItem("Snow Tire Package", "1800"));

                radlstWarranty.Items.Add(new ListItem("3 Years", "0"));
                radlstWarranty.Items.Add(new ListItem("5 Years", "1000"));
                radlstWarranty.Items.Add(new ListItem("7 Years", "1500"));

                radlstWarranty.SelectedIndex = 0;
            }

            if (cboModel.SelectedIndex > 0)
            {
                calculatePrice();
            }
        }
        private void calculatePrice()
        {
            decimal car = 0, colour = 0, total = 0, access = 0, warranty = 0 ,subTotal = 0, tax = 0 ;

            car = Convert.ToDecimal(cboModel.SelectedItem.Value);
            litPricing.Text = "<br><b>Car Price : $ </b>" + car + "</br>";

            colour = Convert.ToDecimal(lstCarColour.SelectedItem.Value);
            litPricing.Text += "<b>Interior Colour : $ </b>" + colour + "<br/>";

            foreach (ListItem item in chklstAccessories.Items)
            {
                access += (item.Selected) ? Convert.ToDecimal(item.Value) : 0;
            }

            litPricing.Text += "<b>Accessories : $ </b>" + access + "<br/>";

            warranty = Convert.ToDecimal(radlstWarranty.SelectedItem.Value);
            litPricing.Text += "<b>Warranty : $ </b>" + warranty + "<br/><br/>";

            subTotal = car + colour + access + warranty;
            litPricing.Text += "<br><b>Total without taxes: $ </b>" + subTotal + "<br />";

            tax += Math.Round(subTotal * Convert.ToDecimal(0.15), 2);
            total = Math.Round(subTotal + tax, 2);

            litPricing.Text += "<b>Total with taxes(15%) : $ </b>" + total + "<br /><br/>";

            panPricing.Visible = true;
        }

        protected void chkContact_CheckedChanged(object sender, EventArgs e)
        {
            txtNumber.Visible = lblNumber.Visible = chkContact.Checked;
        }

        protected void cboModel_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnConclude_Click(object sender, EventArgs e)
        {
            panOrder.Visible = true;
            litOrder.Text = "<br />Congratulations in obtain your new Hondi " + cboModel.SelectedItem.Text + ", in " + txtCity.Text + ", " + txtZip.Text + ". <br /><br /> Your car comes with " + lstCarColour.SelectedItem.Text + " Interior Colour, ";

            foreach (ListItem item in chklstAccessories.Items)
            {

                litOrder.Text += (item.Selected) ? "" + item.Text + " accessories. " : "";
            }

            litOrder.Text += "<br /><br/> You choosed " + radlstWarranty.SelectedItem.Text + " of waranty.";

            litOrder.Text += (chkContact.Checked) ? " And our dealer will contact you by the phone number "  + txtNumber.Text + ".<br/>" : " Our dealer won't contact you.<br /><br />";
        }

    }
}