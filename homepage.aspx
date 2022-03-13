<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="PHARMACYFINAL.homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

         <link href="css/homepagestyle.css" rel="stylesheet" />
    <section class="header1">
        <img src="images/pharmacynew.png" width="100% " height="1100" />
 
        <br/><br/>
</section>
<section class="Article">
<br />
<%--<h1 class=" heading"><b>HEALTH ARTICLES</b>
<br />----------</h1>--%>

     <div class="row">
            <div class="col-4">
        <a href="https://www.sharecare.com/mental-health-behavior">
         <img alt="Mental Health" src="images/mental.png"
         width="150" height="100">Mental Health
      </a>
                </div>
            <div class="col-4">
            <a href="https://www.sharecare.com/exercise-fitness">
         <img alt="Benefits of exercise" src="images/exercise.png"
         width="150" height="100">Benefits of Exercise
      </a>
                </div>
           <div class="col-4">
        <a href="https://www.sharecare.com/headaches-migraines/5-natural-headache-remedies">
         <img alt="Headache remedies" src="images/headache.png"
         width="150" height="100">Headache Remedies
      </a>
               <br/>
                </div>
        </div> <br/><br/>
     <div class="row">
            <div class="col-4">
        <a href="https://www.sharecare.com/lung-health/asthma/what-you-need-to-know-about-asthma">
         <img alt="Asthma" src="images/asthma.png"
         width="150" height="100">Asthma
      </a>
                </div>
            <div class="col-4">
            <a href="https://www.sharecare.com/weight-management/body-mass-index/is-your-bmi-a-lie">
         <img alt="Body Mass Index" src="images/bmi.png"
         width="150" height="100">Body Mass Index
      </a>
                </div>
           <div class="col-4">
        <a href="https://www.sharecare.com/diet-nutrition/supplements/things-you-need-to-know-about-supplements">
         <img alt="Dietary Supplements" src="images/diet.png"
         width="150" height="100">Dietary Supplements
      </a>
               <br/>
                </div>
        </div>
    </section>

    <br/><br/>



                
    
<section class="header5">
<br />
    <img src="images/2604033.png" width="200" height="200" alt=""/><br/>
<a href="ContactUs.aspx" class="hero-btn">Contact US</a>
<br />
</section>
    <br/><br/>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
