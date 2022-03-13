<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Add.aspx.cs" Inherits="PHARMACYFINAL.Add" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <div>
    <table align="center" style="margin-top:60px" cellpadding="10"> 
      <tr>
      
       <td>
           <asp:HyperLink ID="HyperLink2" runat="server" Font-Size="Large" 
               NavigateUrl="~/AddProduct.aspx">Add Product</asp:HyperLink>
       </td>
       <td>
           <asp:HyperLink ID="HyperLink3" runat="server" Font-Size="Large" 
               NavigateUrl="~/ShowProduct.aspx">Show Product</asp:HyperLink>
       </td>
      </tr>
     </table>
     <hr />
     <h2 style='text-align:center;margin-top:100px'>Product added to the cart</h2>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
