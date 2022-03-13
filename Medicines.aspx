<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Medicines.aspx.cs" Inherits="PHARMACYFINAL.Medicines" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script type="text/javascript">
         $(document).ready(function () {
             $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
         });
     </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    

    <center>
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
        </center>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
