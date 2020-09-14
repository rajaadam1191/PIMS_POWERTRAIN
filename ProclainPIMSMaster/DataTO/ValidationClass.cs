using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;


namespace ProclainPIMSMaster
{
    public class ValidationClass
    {
        public bool DropDownValidation(DropDownList DDL )
        {
            if((DDL.Text==string.Empty)||(DDL.Text=="--Select--"))
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        public void ValidatePhoneno(object sender,  System.Windows.Forms.KeyPressEventArgs e)
        {
            if (char.IsNumber(e.KeyChar) == true)
            {
            }
            else if (Convert.ToChar(e.KeyChar) < 10)
            {
            }
            else
            {
                e.Handled = true;
            }
        }

        public bool TextBoxValidation(TextBox t)
        {
            if(t.Text == string.Empty)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

    }
}