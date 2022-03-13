<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="BuyMedicines.aspx.cs" Inherits="PHARMACYFINAL.BuyMedicines" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    
   <%-- <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;700&display=swap" rel="stylesheet">
  

 
<link href="../templates/fonts/icomoon/style.css" rel="stylesheet" />

<link href="../templates/css/bootstrap.min.css" rel="stylesheet" />
<link href="../templates/fonts/flaticon/font/flaticon.css" rel="stylesheet" />
<link href="../templates/css/magnific-popup.css" rel="stylesheet" />
<link href="../templates/css/jquery-ui.css" rel="stylesheet" />
<link href="../templates/css/owl.carousel.min.css" rel="stylesheet" />
<link href="../templates/css/owl.theme.default.min.css" rel="stylesheet" />


<link href="../templates/css/aos.css" rel="stylesheet" />
<link href="../templates/css/style.css" rel="stylesheet" />

<link href="css/cartcss.css" rel="stylesheet" />--%>


     <%--<div class="site-wrap">

         <center>
             <h2>Medicines</h2>
         </center>
   
    
         <div class="site-section bg-light">
      <div class="container">
        
        
    
        <div class="row">
          <div class="col-sm-6 col-lg-4 text-center item mb-4 item-v2">
            <span class="onsale">Sale</span>
            <a href="shop-single.html"> <img src="images/digestiveenzyme.png"  alt="Image" height="300px" width="450"></a>
            <h3 class="text-dark"><a href="shop-single.html">Digestive Enzyme</a></h3>
            <p class="price"><del>495.00</del> &mdash; Rs. 300</p>
          </div>
          <div class="col-sm-6 col-lg-4 text-center item mb-4 item-v2">
            <a href="shop-single.html"> <img src="images/pain1.png" alt="Image" height="300px" width="450"></a>
            <h3 class="text-dark"><a href="shop-single.html">DOLO Neurobion 30-Pain reliever, Fever Reducer</a></h3>
            <p class="price">Rs. 400</p>
          </div>
          <div class="col-sm-6 col-lg-4 text-center item mb-4 item-v2">
            <a href="shop-single.html">  <img src="images/pain2.png" alt="Image" height="300px" width="450"></a>
            <h3 class="text-dark"><a href="shop-single.html">Advin Pain Reliever and Nighttime Sleep Aid</a></h3>
            <p class="price">Rs. 320</p>
          </div>
    
          <div class="col-sm-6 col-lg-4 text-center item mb-4 item-v2">
    
            <a href="shop-single.html"> <img src="images/pain3.png"  alt="Image" height="300px" width="450"></a>
            <h3 class="text-dark"><a href="shop-single.html">Hyland's Headache and Tension relief</a></h3>
            <p class="price"><del>450</del> &mdash; Rs. 400</p>
          </div>
          <div class="col-sm-6 col-lg-4 text-center item mb-4 item-v2">
            <a href="shop-single.html">  <img src="images/eye.png" alt="Image" height="300px" width="450"></a>
            <h3 class="text-dark"><a href="shop-single.html">LUMIFY Redness reliever Eye drops</a></h3>
            <p class="price">Rs. 650</p>
          </div>
          <div class="col-sm-6 col-lg-4 text-center item mb-4 item-v2">
            <span class="onsale">Sale</span>
            <a href="shop-single.html"> <img src="images/eye2.png" alt="Image" height="300px" width="450"></a>
            <h3 class="text-dark"><a href="shop-single.html">Allergy Eye drops for itch relief</a></h3>
            <p class="price">Rs. 700</p>
          </div>

          <div class="col-sm-6 col-lg-4 text-center item mb-4 item-v2">
            <span class="onsale">Sale</span>
            <a href="shop-single.html"> <img src="images/eye3.png" alt="Image" height="300px" width="450"></a>
            <h3 class="text-dark"><a href="shop-single.html">Geritol Complete tablets</a></h3>
            <p class="price">Rs. 400</p>
          </div>
          <div class="col-sm-6 col-lg-4 text-center item mb-4 item-v2">
            <a href="shop-single.html"> <img src="images/O1.PNG"  alt="Image" height="300px" width="450"></a>
            <h3 class="text-dark"><a href="shop-single.html">Fluconazole 200MG Tablet</a></h3>
            <p class="price">Rs. 500</p>
          </div>
          <div class="col-sm-6 col-lg-4 text-center item mb-4 item-v2">
            <a href="shop-single.html"><img src="images/O2.PNG" alt="Image" height="300px" width="450""></a>
            <h3 class="text-dark"><a href="shop-single.html">Betahistine Dihydrochloride Tablets IP</a></h3>
            <p class="price">Rs. 500</p>
          </div>
          
          <div class="col-sm-6 col-lg-4 text-center item mb-4 item-v2">
          
            <a href="shop-single.html">  <img src="images/O3.PNG" alt="Image" height="300px" width="450"></a>
            <h3 class="text-dark"><a href="shop-single.html">Oravig 50 mg tablets</a></h3>
            <p class="price">230</p>
          </div>
          <div class="col-sm-6 col-lg-4 text-center item mb-4 item-v2">
            <a href="shop-single.html"> <img src="images/end.png"  alt="Image" height="300px" width="450"></a>
            <h3 class="text-dark"><a href="shop-single.html">Metformin Hydrochloride Prolonged-release Tablets</a></h3>
            <p class="price">Rs. 350</p>
          </div>
          <div class="col-sm-6 col-lg-4 text-center item mb-4 item-v2">
            <span class="onsale">Sale</span>
            <a href="shop-single.html">  <img src="images/CopyofUntitled_27_600x.png" alt="Image" height="300px" width="450"></a>
            <h3 class="text-dark"><a href="shop-single.html">Metaflora Gut-Probiotic</a></h3>
            <p class="price">Rs. 300</p>
          </div>
             <div class="col-sm-6 col-lg-4 text-center item mb-4 item-v2">
            <span class="onsale">Sale</span>
            <a href="shop-single.html">  <img src="images/end2.png" alt="Image" height="300px" width="450"></a>
            <h3 class="text-dark"><a href="shop-single.html">Glandin tablets</a></h3>
            <p class="price">Rs. 350</p>
          </div>

            <div class="col-sm-6 col-lg-4 text-center item mb-4 item-v2">
            <span class="onsale">Sale</span>
            <a href="shop-single.html">  <img src="images/end3.png"alt="Image" height="300px" width="450"></a>
            <h3 class="text-dark"><a href="shop-single.html">AntaGolin Tablets</a></h3>
            <p class="price">Rs. 400</p>
          </div>
            <div class="col-sm-6 col-lg-4 text-center item mb-4 item-v2">
            <span class="onsale">Sale</span>
            <a href="shop-single.html">  <img src="images/skin.png" alt="Image" height="300px" width="450"></a>
            <h3 class="text-dark"><a href="shop-single.html">Himalaya wellness Pure Herbs Tablets</a></h3>
            <p class="price">Rs. 500</p>
          </div>
            <div class="col-sm-6 col-lg-4 text-center item mb-4 item-v2">
            <span class="onsale">Sale</span>
            <a href="shop-single.html"> <img src="images/skin1.png" alt="Image" height="300px" width="450"></a>
            <h3 class="text-dark"><a href="shop-single.html">Varey Botanics-Glutathione Tablets</a></h3>
            <p class="price">Rs. 790</p>
          </div>
            <div class="col-sm-6 col-lg-4 text-center item mb-4 item-v2">
            <span class="onsale">Sale</span>
            <a href="shop-single.html">  <img src="images/skin3.png" alt="Image" height="300px" width="450"></a>
            <h3 class="text-dark"><a href="shop-single.html">Neuherbs hair skin vitamins supplements- Collagen capsules</a></h3>
            <p class="price">Rs. 800</p>
          </div>
            <div class="col-sm-6 col-lg-4 text-center item mb-4 item-v2">
            <span class="onsale">Sale</span>
            <a href="shop-single.html"> <img src="images/nut1.png" alt="Image" height="300px" width="450""></a>
            <h3 class="text-dark"><a href="shop-single.html">Pure Nutrition Iron tablets</a></h3>
            <p class="price">Rs. 800</p>
          </div>
            <div class="col-sm-6 col-lg-4 text-center item mb-4 item-v2">
            <span class="onsale">Sale</span>
            <a href="shop-single.html"> <img src="images/nut2.png" alt="Image" height="300px" width="450"></a>
            <h3 class="text-dark"><a href="shop-single.html">Mypro-Sport-Nutrition-Vitamin Antioxidant</h3>
            <p class="price"><del>Rs. 750</del> &mdash; Rs. 500</p>
          </div>
            <div class="col-sm-6 col-lg-4 text-center item mb-4 item-v2">
            <span class="onsale">Sale</span>
            <a href="shop-single.html"><img src="images/nut3.png" alt="Image" height="300px" width="450"></a>
            <h3 class="text-dark"><a href="shop-single.html">Herbalife-Nutrition-MultiVitamin-Mineral-Herbal</a></h3>
            <p class="price">Mypro-Sport-Nutrition</p>
          </div>
            <div class="col-sm-6 col-lg-4 text-center item mb-4 item-v2">
            <span class="onsale">Sale</span>
            <a href="shop-single.html">  <img src="images/obes.png" alt="Image" height="300px" width="450"></a>
            <h3 class="text-dark"><a href="shop-single.html">Xenical 120mg</a></h3>
            <p class="price">Rs. 600</p>
          </div>
            <div class="col-sm-6 col-lg-4 text-center item mb-4 item-v2">
            <span class="onsale">Sale</span>
            <a href="shop-single.html">  <img src="images/Obenyl-Tabs-1.png" alt="Image" height="300px" width="450"></a>
            <h3 class="text-dark"><a href="shop-single.html">Obenyl tablets</a></h3>
            <p class="price">Rs. 760</p>
          </div>
            <div class="col-sm-6 col-lg-4 text-center item mb-4 item-v2">
            <span class="onsale">Sale</span>
            <a href="shop-single.html">  <img src="images/th.png" alt="Image" height="300px" width="450"></a>
            <h3 class="text-dark"><a href="shop-single.html">Zahler Paraguard Digestive Supplement</a></h3>
            <p class="price">Rs. 450</p>
          </div>
            <div class="col-sm-6 col-lg-4 text-center item mb-4 item-v2">
            <span class="onsale">Sale</span>
            <a href="shop-single.html"> <img src="images/injury1.png" alt="Image" height="300px" width="450"></a>
            <h3 class="text-dark"><a href="shop-single.html">Omeo Injury Relief tablets</a></h3>
            <p class="price">Rs. 600</p>
          </div>
            <div class="col-sm-6 col-lg-4 text-center item mb-4 item-v2">
            <span class="onsale">Sale</span>
            <a href="shop-single.html">  <img src="images/injury2.png" alt="Image" height="300px" width="450"></a>
            <h3 class="text-dark"><a href="shop-single.html">Heal Fast Ointment</a></h3>
            <p class="price">Rs. 450 </p>
          </div>
            <div class="col-sm-6 col-lg-4 text-center item mb-4 item-v2">
            <span class="onsale">Sale</span>
            <a href="shop-single.html"><img src="images/Car1.jpg" alt="Image" height="300px" width="450"></a>
            <h3 class="text-dark"><a href="shop-single.html">Sphingolin</a></h3>
            <p class="price">Rs. 500</p>
          </div>
            <div class="col-sm-6 col-lg-4 text-center item mb-4 item-v2">
            <span class="onsale">Sale</span>
            <a href="shop-single.html">  <img src="images/diet.png" alt="Image" height="300px" width="450"></a>
            <h3 class="text-dark"><a href="shop-single.html">Diet</a></h3>
            <p class="price">Rs. 766</p>
          </div>
            <div class="col-sm-6 col-lg-4 text-center item mb-4 item-v2">
            <span class="onsale">Sale</span>
            <a href="shop-single.html"> <img src="images/car2.jpg" alt="Image"height="300px" width="450"></a>
            <h3 class="text-dark"><a href="shop-single.html">Methylcobalamin B12</a></h3>
            <p class="price">Rs. 550 </p>
          </div>
            <div class="col-sm-6 col-lg-4 text-center item mb-4 item-v2">
            <span class="onsale">Sale</span>
            <a href="shop-single.html"> <img src="images/car3.png" alt="Image" height="300px" width="450"></a>
            <h3 class="text-dark">Priority 1-Vitamins Protozyme</h3>
            <p class="price">Rs. 400</p>
          </div>
            <div class="col-sm-6 col-lg-4 text-center item mb-4 item-v2">
            <span class="onsale">Sale</span>
            <a href="shop-single.html">  <img src="images/NER1.PNG" alt="Image" height="300px" width="450"></a>
            <h3 class="text-dark"><a href="shop-single.html">Myotrophine</a></h3>
            <p class="price">Rs. 450</p>
          </div>
            <div class="col-sm-4 col-lg-4 text-center item mb-4 item-v2">
            <span class="onsale">Sale</span>
            <a href="shop-single.html">  <img src="images/NER2.PNG" alt="Image" height="300px" width="450"></a>
            <h3 class="text-dark"><a href="shop-single.html">MigRelief Headache Essential Oil RollOn</a></h3>
            <p class="price">Rs. 600</p>
          </div>
            <div class="col-sm-4 col-lg-4 text-center item mb-4 item-v2">
            <span class="onsale">Sale</span>
            <a href="shop-single.html">  <img src="images/ner3.png" alt="Image" height="300px" width="350"></a>
            <h3 class="text-dark"><a href="shop-single.html">TriDerma Intense Fast Healing Cream</a></h3>
            <p class="price">Rs. 600</p>

                <asp:Button  CssClass="mainbutton"  ID="btnAddtoCart" runat="server" Text="Button" OnClick="btnAddtoCart_Click" />
                
          </div>
        </div>
       
      </div>
    </div>
   
  </div>--%>
   
    


<%--    <script src="../templates/js/jquery-3.3.1.min.js"></script>
    <script src="../templates/js/jquery-ui.js"></script>
    <script src="../templates/js/popper.min.js"></script>
    <script src="../templates/js/bootstrap.min.js"></script>
    <script src="../templates/js/owl.carousel.min.js"></script>
    <script src="../templates/js/jquery.magnific-popup.min.js"></script>
    <script src="../templates/js/aos.js"></script>
    <script src="../templates/js/main.js"></script>--%>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
