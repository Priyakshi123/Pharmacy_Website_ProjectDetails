<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="PHARMACYFINAL.AddProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <div>
    <!---Menu code here--->
    <table align="center" Style= " margin-top:60px" cellpadding="19">
    <tr>
   
    <td>
    <asp:HyperLink ID="HyperLink2" runat="server" Font-Size="Large" NavigateUrl="~/AddProduct.aspx" >ADD PRODUCT</asp:HyperLink>
    </td>
    <td>
    <asp:HyperLink ID="HyperLink3" runat="server" Font-Size ="Large" NavigateUrl="~/ShowProduct.aspx">SHOW PRODUCT</asp:HyperLink>
    
    </td>
    </tr>
    </table>
 <hr /><!---Menu code end here--->

 <table align="center" style="margin-top :40px; font-size :18px;" cellpadding="10">
 <tr>
 <td>
 Select Product
 </td>
 <td>  
     <asp:DropDownList ID="DropDownList1" runat="server" Font-Size ="Large" 
         AutoPostBack="True" Width="139px" 
         onselectedindexchanged="DropDownList1_SelectedIndexChanged">
         <asp:ListItem>---Select---</asp:ListItem>
       
 <asp:ListItem>LUMIFY Redness reliever Eye drops</asp:ListItem>
 <asp:ListItem>Allergy Eye drops for itch relief</asp:ListItem>
 <asp:ListItem>Geritol Complete tablets</asp:ListItem>
 <asp:ListItem>Fluconazole 200MG Tablet</asp:ListItem>
 <asp:ListItem>Betahistine Dihydrochloride Tablets IP</asp:ListItem>
 
 <asp:ListItem>Metformin Hydrochloride Prolonged-release Tablets</asp:ListItem>
 <asp:ListItem>Metaflora Gut-Probiotic</asp:ListItem>
 
 <asp:ListItem>AntaGolin Tablets</asp:ListItem>

 <asp:ListItem>Pure Nutrition Iron tablets</asp:ListItem>
 <asp:ListItem>Mypro-Sport-Nutrition-Vitamin Antioxidant</asp:ListItem>
 <asp:ListItem>Herbalife-Nutrition-Multivitamin-Mineral-Herbal</asp:ListItem>
 <asp:ListItem>Xenical 120mg</asp:ListItem>
 <asp:ListItem>Obenyl Tablets</asp:ListItem>
 <asp:ListItem>Zahler Paraguard, Digestive supplement</asp:ListItem>
 <asp:ListItem>Omeo Injury relief tablets</asp:ListItem>
 <asp:ListItem>Heal Fast Ointment</asp:ListItem>
 <asp:ListItem>Sphingolin</asp:ListItem>
 <asp:ListItem>Diet</asp:ListItem>
 <asp:ListItem>Methylcobalamin- B12</asp:ListItem>
 <asp:ListItem>Priority One vitamins Proto-Zyme</asp:ListItem>
 <asp:ListItem>Myotrophin</asp:ListItem>
 <asp:ListItem>MigRelief Headache Essential oil roll on</asp:ListItem>
 <asp:ListItem>TriDerma Intense Fast healing Cream</asp:ListItem>
     </asp:DropDownList>

  </td>
 </tr>

 <tr>
 <td colspan="2" align="center">
     <asp:Image ID="Image1" runat="server" Width="150px" />
 </td> 
 </tr>

 <tr>
 <td colspan="2" align="center">
     <asp:Label ID="Label1" runat="server"  Font-Bold ="True"></asp:Label>
 </td>
  </tr>
 <tr>
  <td colspan="2" align="center">
     <asp:Button ID="Button1" runat="server" Text="ADD TO CART" onclick="Button1_Click" Visible="False" /> 
 </td>
 </tr>
 </table>
    
 </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
