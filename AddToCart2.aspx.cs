using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PHARMACYFINAL
{
    public partial class AddToCart2 : System.Web.UI.Page
    {
        DataAccess DA = new DataAccess();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["username"] !=null && Session["userid"] != null)
            {
                lblsuccess.Text = Session["username"].ToString();
                lblid.Text = Session["userid"].ToString();
                Session.Timeout = 10;
            }
            else
            {
                Session.RemoveAll(); ;
               
            }
        }
    }
}