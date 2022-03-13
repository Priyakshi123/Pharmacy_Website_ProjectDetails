using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PHARMACYFINAL
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"].Equals(""))
                {
                    Linkbutton3.Visible = true;
                    Linkbutton5.Visible = true;
                    Linkbutton6.Visible = false;
                    Linkbutton12.Visible = false;
                    LinkButton11.Visible = true;
                    LinkButton7.Visible = false;
                  


                }
                else if (Session["role"].Equals("user"))
                {
                    Linkbutton3.Visible = false;
                    Linkbutton5.Visible = false;
                    Linkbutton6.Visible = true;
                    Linkbutton12.Visible = true;

                    Linkbutton12.Text = "Welcome " + Session["username"].ToString();
                    LinkButton11.Visible = true;
                    LinkButton7.Visible = false;
                   
                }
                else if (Session["role"].Equals("admin"))
                {
                    Linkbutton3.Visible = false;
                    Linkbutton5.Visible = false;
                    Linkbutton6.Visible = true;
                    Linkbutton12.Visible = true;

                    Linkbutton12.Text = "Welcome Admin";
                    LinkButton11.Visible = false;
                    LinkButton7.Visible = true;
                  
                }




            }
            catch (Exception ex)
            {

            }
        }

        protected void Linkbutton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Medicines.aspx");
        }

        protected void Linkbutton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserLogin.aspx");
        }

        protected void Linkbutton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("Signup.aspx");
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("Inventory.aspx");
        }

       

        //protected void LinkButton10_Click(object sender, EventArgs e)
        //{
        //    Response.Redirect("Profile.aspx");
        //}

        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin.aspx");
        }

        protected void Linkbutton6_Click(object sender, EventArgs e)
        {

            Session["username"] = "";
            Session["fullname"] = "";

            Session["role"] = "";
            Session["status"] = "";

            Linkbutton3.Visible = true;
            Linkbutton5.Visible = true;
            Linkbutton6.Visible = false;
            Linkbutton12.Visible = false;
            LinkButton11.Visible = true;
            LinkButton7.Visible = false;
            

            Response.Redirect("homepage.aspx");
        }

        protected void Linkbutton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddToCart.aspx");
        }

        protected void Linkbutton1_Click(object sender, EventArgs e)
        {

           


            Response.Redirect("Default.aspx");
        }

    }
}