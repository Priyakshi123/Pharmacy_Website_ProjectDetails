using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace PHARMACYFINAL
{
    public partial class Inventory : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        static string global_filepath;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                PharmacistManufacturerValues();
            }

            GridView1.DataBind();
        }

        //go button click



        // update button click
        protected void Button3_Click(object sender, EventArgs e)
        {
            updateMedByID();
        }
        // delete button click
        protected void Button2_Click(object sender, EventArgs e)
        {
            deleteMedByID();
        }
        // add button click
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (checkIfMedicineExists())
            {
                Response.Write("<script>alert('Product Already Exists');</script>");
            }
            else
            {
                addNew();
            }
        }





        void deleteMedByID()
        {
            if (checkIfMedicineExists())
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    SqlCommand cmd = new SqlCommand("DELETE from Medicines WHERE med_id='" + TextBox1.Text.Trim() + "'", con);

                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Record Deleted Successfully');</script>");

                    GridView1.DataBind();

                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }

            }
            else
            {
                Response.Write("<script>alert('Invalid ID');</script>");
            }
        }

        void updateMedByID()
        {

            if (checkIfMedicineExists())
            {
                try
                {

                    //nt actual_stock = Convert.ToInt32(TextBox4.Text.Trim());
                    // int current_stock = Convert.ToInt32(TextBox5.Text.Trim());

                    // if (global_actual_stock == actual_stock)
                    // {

                    // }
                    // else
                    // {
                    //     if (actual_stock < global_issued_books)
                    //     {
                    //         Response.Write("<script>alert('Actual Stock value cannot be less than the Issued books');</script>");
                    //         return;


                    //     }
                    //     else
                    //     {
                    //         current_stock = actual_stock - global_issued_books;
                    //         TextBox5. iText = "" + current_stock;
                    //     }


                    string types = "";
                    foreach (int i in ListBox1.GetSelectedIndices())
                    {
                        types = types + ListBox1.Items[i] + ",";
                    }
                    types = types.Remove(types.Length - 1);

                    string filepath = "~/inventory_image/pancratine.png";
                    string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                    if (filename == "" || filename == null)
                    {
                        filepath = global_filepath;

                    }
                    else
                    {
                        FileUpload1.SaveAs(Server.MapPath("inventory_image/" + filename));
                        filepath = "~/inventory_image/" + filename;
                    }

                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    SqlCommand cmd = new SqlCommand("UPDATE Medicines set med_name=@med_name, manufacturer_name=@manufacturer_name, " +
                        "pharmacist_name=@pharmacist_name, " + "medicine_type=@medicine_type" +
                       " med_cost=@med_cost, " +
                        "med_qtn=@med_qtn, med_description=@med_description," +
                        " med_img_link=@med_img_link where med_id='" + TextBox1.Text.Trim() + "'", con);

                    //cmd.Parameters.AddWithValue("@med_id", TextBox1.Text.Trim());
                    cmd.Parameters.AddWithValue("@med_name", TextBox2.Text.Trim());
                    cmd.Parameters.AddWithValue("@manufacturer_name", DropDownList3.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@pharmacist_name", DropDownList1.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@medicine_type", types);
                    cmd.Parameters.AddWithValue("@med_cost", TextBox9.Text.Trim());
                    cmd.Parameters.AddWithValue("@med_qtn", TextBox10.Text.Trim());
                    cmd.Parameters.AddWithValue("@med_description", TextBox6.Text.Trim());
                    cmd.Parameters.AddWithValue("@med_img_link", filepath);




                    cmd.ExecuteNonQuery();
                    con.Close();
                    GridView1.DataBind();
                    Response.Write("<script>alert('Record Updated Successfully');</script>");
                    GridView1.DataBind();


                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Invalid ID');</script>");
            }
        }


        void getmedByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from Medicines WHERE med_id='" + TextBox1.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    TextBox2.Text = dt.Rows[0]["med_name"].ToString();
                    TextBox9.Text = dt.Rows[0]["med_cost"].ToString().Trim();
                    TextBox10.Text = dt.Rows[0]["med_qtn"].ToString().Trim();
                    TextBox6.Text = dt.Rows[0]["med_description"].ToString();
                    //TextBox7.Text = "" + (Convert.ToInt32(dt.Rows[0]["actual_stock"].ToString()) - Convert.ToInt32(dt.Rows[0]["current_stock"].ToString()));

                    DropDownList1.SelectedValue = dt.Rows[0]["pharmacist_name"].ToString().Trim();
                    DropDownList3.SelectedValue = dt.Rows[0]["manufacturer_name"].ToString().Trim();

                    ListBox1.ClearSelection();
                    string[] types = dt.Rows[0]["medicine_type"].ToString().Trim().Split(',');
                    for (int i = 0; i < types.Length; i++)
                    {
                        for (int j = 0; j < ListBox1.Items.Count; j++)
                        {
                            if (ListBox1.Items[j].ToString() == types[i])
                            {
                                ListBox1.Items[j].Selected = true;

                            }
                        }

                        global_filepath = dt.Rows[0]["med_img_link"].ToString();
                    }

                }
                else
                {
                    Response.Write("<script>alert('Invalid ID');</script>");
                }

            }
            catch (Exception ex)
            {

            }
        }

        void PharmacistManufacturerValues()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT manufacturer_name from manufacturer;", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                DropDownList3.DataSource = dt;
                DropDownList3.DataValueField = "manufacturer_name";
                DropDownList3.DataBind();

                cmd = new SqlCommand("SELECT pharmacist_name from pharmacist;", con);
                da = new SqlDataAdapter(cmd);
                dt = new DataTable();
                da.Fill(dt);
                DropDownList1.DataSource = dt;
                DropDownList1.DataValueField = "pharmacist_name";
                DropDownList1.DataBind();

            }
            catch (Exception ex)
            {

            }
        }



        bool checkIfMedicineExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from Medicines where med_id='" + TextBox1.Text.Trim() + "' OR med_name='" + TextBox2.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }

        void addNew()
        {
            try
            {
                string type = "";
                foreach (int i in ListBox1.GetSelectedIndices())
                {
                    type = type + ListBox1.Items[i] + ",";
                }
                //genres = Adventure,Self Help,
                type = type.Remove(type.Length - 1);

                string filepath = "~/inventory_image/pancratine.png";
                string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                FileUpload1.SaveAs(Server.MapPath("inventory_image/" + filename));
                filepath = "~/inventory_image/" + filename;


                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO Medicines(med_id,med_name,manufacturer_name,pharmacist_name,medicine_type,med_cost," +
                    "med_qtn,med_description,med_img_link) " +
                    "values(@med_id,@med_name,@manufacturer_name,@pharmacist_name,@medicine_type,@med_cost," +
                    "@med_qtn,@med_description,@med_img_link)", con);

                cmd.Parameters.AddWithValue("@med_id", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@med_name", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@manufacturer_name", DropDownList3.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@pharmacist_name", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@medicine_type", type);
                cmd.Parameters.AddWithValue("@med_cost", TextBox9.Text.Trim());
                cmd.Parameters.AddWithValue("@med_qtn", TextBox10.Text.Trim());
                cmd.Parameters.AddWithValue("@med_description", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@med_img_link", filepath);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Medicine added successfully.');</script>");
                GridView1.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void Button5_Click1(object sender, EventArgs e)
        {
            getmedByID();
        }
    }
}