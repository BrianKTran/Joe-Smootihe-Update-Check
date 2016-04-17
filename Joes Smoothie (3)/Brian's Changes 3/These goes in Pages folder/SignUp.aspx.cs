using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SWA
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                generate();
            }
        }
        public void generate()
        {
            if (!pnl.HasControls())
            {
                for (int i = 0; i < 4; i++)
                {
                    Button detailsBtn = new Button();
                    detailsBtn.Text = "fName" + i.ToString();
                    detailsBtn.ID = i.ToString();
                    detailsBtn.Click += new EventHandler(Button3_Click);
                    pnl.Controls.Add(Button3_Click);
                }
            }
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            generate();
        }

       
    }
}