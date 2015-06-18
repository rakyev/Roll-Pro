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
            
        }

        protected void rblHeight_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (rblHeight.SelectedValue.Equals("in"))
            {
                if (rbHeightC.Checked)
                    seHeightCInches.Enabled = true;
                else
                    seHeightDInches.Enabled = true;
                seHeightCCm.Enabled = false;
                seHeightDCm.Enabled = false;
            }
            else
            {
                seHeightCInches.Enabled = false;
                seHeightDInches.Enabled = false;
                if (rbHeightC.Checked)
                    seHeightCCm.Enabled = true;
                else
                    seHeightDCm.Enabled = true;
            }
        }

        protected void rbWidthA_CheckedChanged(object sender, EventArgs e)
        {
            
            if (rbWidthA.Checked)
            {
                if (rblWidth.Text.Equals("in"))
                {
                    seWidthAInches.Enabled = true;
                    seWidthBInches.Enabled = false;
                }
                else
                {
                    seWidthACm.Enabled = true;
                    seWidthBCm.Enabled = false;
                }
                
            }
            else
            {
                if (rblWidth.Text.Equals("in"))
                {
                    seWidthAInches.Enabled = false;
                    seWidthBInches.Enabled = true;
                }
                else
                {
                    seWidthACm.Enabled = false;
                    seWidthBCm.Enabled = true;
                }
            }
        }

        protected void rblWidth_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (rblWidth.SelectedValue.Equals("in"))
            {
                if (rbWidthA.Checked)
                    seWidthAInches.Enabled = true;
                else
                    seWidthBInches.Enabled = true;
                seWidthACm.Enabled = false;
                seWidthBCm.Enabled = false;

                //if (!seWidthACm.Text.Equals("")) {
                //    seWidthAInches.Text = ((Convert.ToDouble(seWidthACm.Text)) * 0.039370).ToString();
                //}

                //if (!seWidthBCm.Text.Equals(""))
                //{
                //    seWidthBInches.Text = ((Convert.ToDouble(seWidthBCm.Text)) * 0.039370).ToString();
                //}
            }
            else
            {
                seWidthAInches.Enabled = false;
                seWidthBInches.Enabled = false;
                if (rbWidthA.Checked)
                    seWidthACm.Enabled = true;
                else
                    seWidthBCm.Enabled = true;

                //if (!seWidthAInches.Text.Equals(""))
                //{
                //    seWidthACm.Text = ((Convert.ToDouble(seWidthAInches.Text)) / 0.039370).ToString();
                //}

                //if (!seWidthBInches.Text.Equals(""))
                //{
                //    seWidthBCm.Text = ((Convert.ToDouble(seWidthBInches.Text)) / 0.039370).ToString();
                //}
            }
        }

        protected void rbHeight_CheckedChanged(object sender, EventArgs e)
        {

            if (rblHeight.SelectedValue.Equals("in"))
            {
                if (rbHeightC.Checked)
                {
                    seHeightCInches.Enabled = true;
                    seHeightDInches.Enabled = false;
                }
                else
                {
                    seHeightDInches.Enabled = true;
                    seHeightCInches.Enabled = false;
                }
                seHeightCCm.Enabled = false;
                seHeightDCm.Enabled = false;
            }
            else
            {
                seHeightCInches.Enabled = false;
                seHeightDInches.Enabled = false;
                if (rbHeightC.Checked)
                {
                    seHeightCCm.Enabled = true;
                    seHeightDCm.Enabled = false;
                }
                else
                {
                    seHeightDCm.Enabled = true;
                    seHeightCCm.Enabled = false;
                }
            }
        }
        

        protected void rbWidthB_CheckedChanged(object sender, EventArgs e)
        {
            
        }

        protected void seWidthAInches_NumberChanged(object sender, EventArgs e)
        {
            //if (!seWidthACm.Text.Equals(""))
            //{
            //    seWidthAInches.Text = ((Convert.ToDouble(seWidthACm.Text)) * 0.039370).ToString();
            //}

            //if (!seWidthBCm.Text.Equals(""))
            //{
            //    seWidthBInches.Text = ((Convert.ToDouble(seWidthBCm.Text)) * 0.039370).ToString();
            //}

            //if (!seWidthAInches.Text.Equals(""))
            //{
            //    seWidthACm.Text = ((Convert.ToDouble(seWidthAInches.Text)) / 0.039370).ToString();
            //}

            //if (!seWidthBInches.Text.Equals(""))
            //{
            //    seWidthBCm.Text = ((Convert.ToDouble(seWidthBInches.Text)) / 0.039370).ToString();
            //}
        }

        protected void seWidthAInches_ValueChanged(object sender, EventArgs e)
        {
            if (!seWidthAInches.Text.Equals(""))
            {
                seWidthACm.Text = (Math.Round((Convert.ToDouble(seWidthAInches.Text)) / 0.039370)).ToString();
            }
        }

        protected void seWidthACm_ValueChanged(object sender, EventArgs e)
        {
            if (!seWidthACm.Text.Equals(""))
            {
                seWidthAInches.Text = (Math.Round(((Convert.ToDouble(seWidthACm.Text)) * 0.039370),2)).ToString();
            }
        }

        protected void seWidthBInches_ValueChanged(object sender, EventArgs e)
        {
            if (!seWidthBInches.Text.Equals(""))
            {
                seWidthBCm.Text = (Math.Round((Convert.ToDouble(seWidthBInches.Text)) / 0.039370)).ToString();
            }
        }

        protected void seWidthBCm_ValueChanged(object sender, EventArgs e)
        {
            if (!seWidthBCm.Text.Equals(""))
            {
                seWidthBInches.Text = (Math.Round(((Convert.ToDouble(seWidthBCm.Text)) * 0.039370), 2)).ToString();
            }
        }




        protected void seHeightCInches_ValueChanged(object sender, EventArgs e)
        {
            if (!seHeightCInches.Text.Equals(""))
            {
                seHeightCCm.Text = (Math.Round((Convert.ToDouble(seHeightCInches.Text)) / 0.039370)).ToString();
            }
        }

        protected void seHeightCCm_ValueChanged(object sender, EventArgs e)
        {
            if (!seHeightCCm.Text.Equals(""))
            {
                seWidthAInches.Text = (Math.Round(((Convert.ToDouble(seHeightCCm.Text)) * 0.039370),2)).ToString();
            }
        }

        protected void seHeightDInches_ValueChanged(object sender, EventArgs e)
        {
            if (!seHeightDInches.Text.Equals(""))
            {
                seHeightDCm.Text = (Math.Round((Convert.ToDouble(seHeightDInches.Text)) / 0.039370)).ToString();
            }
        }

        protected void seHeightDCm_ValueChanged(object sender, EventArgs e)
        {
            if (!seHeightDCm.Text.Equals(""))
            {
                seHeightDInches.Text = (Math.Round(((Convert.ToDouble(seHeightDCm.Text)) * 0.039370), 2)).ToString();
            }
        }

        protected void ASPxCallback1_Callback(object sender, CallbackEventArgs e)
        {
            e.Result = "2";//e.Parameter;
        }
    }
}