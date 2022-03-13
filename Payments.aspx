<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Payments.aspx.cs" Inherits="PHARMACYFINAL.Payments" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <div class="container">

        <div class="row">
            <div class="col-md-8 mx-auto">


                <div class="card">

                    <div class="card-body">

                        <div class="row">

                           <div class="col">

                               <center>

                                   <h4>Payment Form</h4>

                               </center>

                           </div>

                    </div>

                        <div class="row">

                           <div class="col">

                               <center>
                                   <img src="templates/images/creditcard-23-1461389394-1572680568.jpg" width="100px" />
                                   

                               </center>

                      </div>

                </div>           

                        <div class="row">

                        <div class="col-md-6">

                            <center>

 

                           

                            <label><b>Card Number</b></label>

                            <div class="form-group">
     <asp:TextBox class="form-control"  ID="TextBox1" runat="server" placeholder="CardNumber" TextMode="Number"></asp:TextBox>

                                <%-- <asp:TextBox CssClass="form-control" ID="TextBox1"
                                     runat="server" placeholder="Card number" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>--%>

                                

 

                             </div>

                               

                            </div>
                     

                        <div class="col-md-6">

                            <center>

                            <label>Card Holder Name</label>

                            <div class="form-group">

                             

                                 <asp:TextBox CssClass="form-control" ID="TextBox2"

                                     runat="server" placeholder="Card holder name"></asp:TextBox>                           

                           

                           

                        </div>

                            </center>

                    </div>

                            </div>

                        <div class="row">

                        <div class="col-md-10">

                            <center>

                            <label>Expiry Date</label>

                            <div class="form-group">

                             <select name="months" id="months">

                    <option value="Jan">Jan</option>

                    <option value="Feb">Feb</option>

                    <option value="Mar">Mar</option>

                    <option value="Apr">Apr</option>

                    <option value="May">May</option>

                    <option value="Jun">Jun</option>

                    <option value="July">July</option>

                    <option value="Aug">Aug</option>

                    <option value="Sep">Sep</option>

                    <option value="Oct">Oct</option>

                    <option value="Nov">Nov</option>

                    <option value="Dec">Dec</option>

                </select>

                <select name="Years" id="Years">

                    <option value="2025">2025</option>

                    <option value="2024">2024</option>

                    <option value="2023">2023</option>

                    <option value="2022">2022</option>

                    <option value="2021">2021</option>

                    <option value="2020">2020</option>

                    <option value="2019">2019</option>

                    <option value="2018">2018</option>

                    <option value="2017">2017</option>

                    <option value="2016">2016</option>

                    <option value="2015">2015</option>

                </select>                                                        

                           

                           </div>

                                </center>

                        </div>

                    </div>

                    <div class="col-md-10">

                        <center>

                            <label>CVV</label>

                            <div class="form-group">

                            

                                 <asp:TextBox CssClass="form-control" ID="TextBox3"

                                     runat="server" placeholder="cvv"></asp:TextBox>                           

                           

                           

                        </div>

                            </center>

                    </div>

                      <div class="row">

                        <div class="col-md-6">

                            <center>

                            <asp:Button ID="Button1" class="btn btn-lg btn-block btn-primary"

                                runat="server" Text="Pay on Delivery" OnClick="Button1_Click" />

                                </center>

                            </div>
                           <div class="col-md-6">

                            <center>

                            <asp:Button ID="Button2" class="btn btn-lg btn-block btn-primary"

                                runat="server" Text="Proceed To Pay" OnClick="Button2_Click" />

                                </center>

                            </div>

                          </div>

                                

 

                             </div>

                            </div>

                        </div>

                    </div>

                    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
