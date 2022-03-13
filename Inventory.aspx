<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Inventory.aspx.cs" Inherits="PHARMACYFINAL.Inventory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    
     <script type="text/javascript">
         $(document).ready(function () {
             $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
         });

         function readURL(input) {
             if (input.files && input.files[0]) {
                 var reader = new FileReader();

                 reader.onload = function (e) {
                     $('#imgview').attr('src', e.target.result);
                 };

                 reader.readAsDataURL(input.files[0]);
             }
         }

     </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

     <link href="css/Inventorystyle.css" rel="stylesheet" />


    <div class="container-fluid">
      <div class="row">
         <div class="col-md-5"/>
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Medicine Inventory</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                            <img src="images/medicine2.png" width="100px" />
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                         <asp:FileUpload ID="FileUpload1" runat="server" />
                        <hr>
                     </div>
                  </div>
                  <%--<div class="row">
                     <div class="col">
                        <asp:FileUpload class="form-control" ID="FileUpload1" runat="server" />
                     </div>
                  </div>--%>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Product ID</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Product ID"></asp:TextBox>
                               <asp:Button class="btn btn-primary" ID="Button5" runat="server" Text="Go" OnClick="Button5_Click1" />
<%--                               <asp:Button ID="Button5" runat="server" Text="Button" />--%>
                               <%--<asp:Button Class ="btn btn-primary"

                                        ID="Button4" runat="server" Text="Go" OnClick="Button4_Click" />--%>
<%--                              <asp:LinkButton class="btn btn-primary" ID="LinkButton4" runat="server"><i class="fas fa-check-circle"></i></asp:LinkButton>--%>
                           </div>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Product Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Product Name"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                      <div class="row">  
                     <div class="col-md-6">
                        <label>Manufacturer Name</label>
       <div class="form-group">
                           <asp:DropDownList class="form-control" ID="DropDownList3" runat="server">
                              <asp:ListItem Text="A1" Value="a1" />
                              <asp:ListItem Text="a2" Value="a2" />
                           </asp:DropDownList>
                        </div>
                         </div>
                          <div class="col-md-6">
                              <label>Pharmacist Name</label>
 <div class="form-group">
                           <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                              <asp:ListItem Text="A1" Value="a1" />
                              <asp:ListItem Text="a2" Value="a2" />
                           </asp:DropDownList>
                        </div>
                        </div>
                     <div class="col-md-6">
                         
                        <label>Types</label>
                        <div class="form-group">

                           <asp:ListBox CssClass="form-control" ID="ListBox1" runat="server" SelectionMode="Multiple" Rows="5">
                              <asp:ListItem Text="Digestive system" Value="Digestive system" />
                              <asp:ListItem Text="Cardiovascular" Value="Cardiovascular" />
                              <asp:ListItem Text="Nervous system" Value="Nervous system" />
                              <asp:ListItem Text="Pain" Value="Pain" />
                              <asp:ListItem Text="Eye" Value="Eye" />
                              <asp:ListItem Text="Oropharynx" Value="Oropharynx" />
                              <asp:ListItem Text="Endocrine problems" Value="Endocrine Problems" />
                              <asp:ListItem Text="Skin" Value="Skin" />
                              <asp:ListItem Text="Nutrition" Value="Nutrition" />
                              <asp:ListItem Text="Obesity" Value="Obesity" />
                              <asp:ListItem Text="Injury Relief" Value="Injury Relief" />

                           </asp:ListBox>
                                
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Cost</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="Cost" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Quantity</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server" placeholder="Quantity" TextMode="Number"></asp:TextBox>
                        </div>
                     </div></div>
  
              
                  <div class="row">
                     <div class="col-12">
                        <label>Medicine Description</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Medicine Description" TextMode="MultiLine" Rows="2"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-4">
                        <asp:Button ID="Button1" class="btn btn-lg btn-block btn-success" runat="server" Text="Add" OnClick="Button1_Click" />
                     </div>
                     <div class="col-4">
                        <asp:Button ID="Button3" class="btn btn-lg btn-block btn-warning" runat="server" Text="Update" OnClick="Button3_Click" />
                     </div>
                     <div class="col-4">
                        <asp:Button ID="Button2" class="btn btn-lg btn-block btn-danger" runat="server" Text="Delete" OnClick="Button2_Click" />
                     </div>
                  </div>
               </div>
            </div>
          
            <a href="homepage.aspx"><< Back to Home</a><br><br/>
            <br>
         </div>
         <div class="col-md-7">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Medicine Stock</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="med_id" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="med_id" HeaderText="Product ID" ReadOnly="True" SortExpression="med_id" />
                               
                                <asp:TemplateField>
                                    <itemtemplate>
                             
                                    <div class="container-fluid">
                                       <div class="row">
                                          <div class="col-lg-10">
                                             <div class="row">
                                                <div class="col-12">
                                                   <asp:Label ID="Label1" runat="server" Text='<%# Eval("med_name") %>' Font-Bold="True" Font-Size="X-Large"></asp:Label>
                                                </div>
                                             </div>
                                              
                                             <div class="row">
                                                <div class="col-12">
                                                   <span>Manufacturer - </span>
                                                   <asp:Label ID="Label2" runat="server" Font-Bold="True" Text='<%# Eval("manufacturer_name") %>'></asp:Label>
                                                   &nbsp;| <span><span>&nbsp;</span>Pharmacist - </span>
                                                   <asp:Label ID="Label3" runat="server" Font-Bold="True" Text='<%# Eval("pharmacist_name") %>'></asp:Label>
                                                   &nbsp;| 
                                                   <span>
                                                      Type -<span>&nbsp;</span>
                                                      <asp:Label ID="Label4" runat="server" Font-Bold="True" Text='<%# Eval("medicine_type") %>'></asp:Label>
                                                   </span>
                                                </div>
                                             </div>
                                             <div class="row">
                                                <div class="col-12">
                                                   Cost -
                                                   <asp:Label ID="Label5" runat="server" Font-Bold="True" Text='<%# Eval("med_cost") %>'></asp:Label>
                                                   &nbsp;| Quantity -
                                                   <asp:Label ID="Label6" runat="server" Font-Bold="True" Text='<%# Eval("med_qtn") %>'></asp:Label>
                                                   &nbsp;</div>
                                             </div>
                                            
                                             <div class="row">
                                                <div class="col-12">
                                                   Description -
                                                   <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Smaller" Text='<%# Eval("med_description") %>'></asp:Label>
                                                </div>
                                             </div>
                                          </div>
                                          <div class="col-lg-2">
                                             <asp:Image class="img-fluid p-2" ID="Image1" runat="server" ImageUrl='<%# Eval("med_img_link") %>' />
                                          </div>
                                       </div>
                                    </div>

                                        </itemtemplate>
                                </asp:TemplateField>
                               
                            </Columns>
                         </asp:GridView>
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                     </div>
                  </div>
               </div>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EPHARMAConnectionString %>" SelectCommand="SELECT * FROM [Medicines]"></asp:SqlDataSource>
            </div>
         </div>
      </div>
  

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
