using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DevExpress.Web;

namespace RollPro
{
    public partial class Quote : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                grid.DataBind();
                grid.DetailRows.ExpandRow(0);
            }
        }

        protected void detailGrid_DataSelect(object sender, EventArgs e)
        {
            Session["OperationID"] = (sender as ASPxGridView).GetMasterRowKeyValue();
        }
        
        protected void rblHeight_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (rblHeight.SelectedValue == "in") {
                HeightE.Text = "8.11 (206)";
            }
            else
            {
                HeightE.Text = "206 (8.11)";
            }
        }

        protected void rbWidthA_CheckedChanged(object sender, EventArgs e)
        {
            if (rbWidthA.Checked)
            {
                WidthA.Enabled = true;
                WidthB.Enabled = false;
            }
            else
            {
                WidthA.Enabled = false;
                WidthB.Enabled = true;
            }

        }

        protected void rbHeight_CheckedChanged(object sender, EventArgs e)
        {
            if (rbHeightC.Checked)
            {
                HeightC.Enabled = true;
                HeightD.Enabled = false;
            }
            else
            {
                HeightC.Enabled = false;
                HeightD.Enabled = true;
            }

        }
        

        protected void rbWidthB_CheckedChanged(object sender, EventArgs e)
        {
            
        }
    }
}