<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="OnlineConsultation.aspx.cs" Inherits="PHARMACYFINAL.OnlineConsultation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <link href="css/Consultation.css" rel="stylesheet" />

     <section class="contact">

        <div class="content">

            <h2>Consult</h2>

        </div>

        <div class="container">

            <div class="contactinfo">

                <div class="box">

                    <div class="icon"></div>

                        <div class="text">

                            <h3>

                                Address

                            </h3>

                            <p>4671  Sugar Camp Road,<br />Owatonna, Minnesota,<br />55060</p>

                        </div>

                    </div>

                    <div class="box">

                        <div class="icon"></div>

                        <div class="text">

                            <h3>

                                Phone

                            </h3>

                            <p>507-475-6094</p>

                        </div>

                    </div>

                    <div class="box">

                        <div class="icon"></div>

                        <div class="text">

                            <h3>

                                Email

                            </h3>

                            <p>Pharmacy@pharma-gmail.com</p>

                        </div>

                    </div>

               </div>

            <div class="contactForm">

                <form>

                    <h2>Send Message</h2>

                    <div class="inputBox">

                        <input type="text" name="" required="required" />

                        <span>Full Name</span>

                    </div>

                    <div class="inputBox">

                        <input type="text" name="" required="required" />

                        <span>Email</span>

                    </div>

                    <div class="inputBox">

                        <textarea required="required"></textarea>

                        <span>Type your Message...</span>

                    </div>

                    <div class="inputBox">

                       <asp:Button ID="Button1" runat="server" Text="Send" OnClick="Button1_Click" />

                       

                    </div>

                </form>

            </div>

        </div>

    </section>
    <br /><br /><br />

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
