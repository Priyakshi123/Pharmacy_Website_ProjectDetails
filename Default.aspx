<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PHARMACYFINAL.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <div>
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
 <hr />
 <h1 style="text-align :center; margin-top:70px;"> Select Products to buy</h1>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
