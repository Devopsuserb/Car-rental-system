<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/PresentationLayer/HomePage.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="CarRentalSystem1._1.PresentationLayer.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:LinkButton ID="LoginButton" runat="server" Font-Bold="True" Font-Underline="True" style="z-index: 1; left: 989px; top: 197px; position: absolute; height: 25px; width: 119px; text-align: center; font-size: x-large; color: #333333" OnClick="LoginButton_Click">Login</asp:LinkButton>
<asp:Image ID="Image2" runat="server" ImageUrl="~/Pictures/FinalBelowTitlePic.png" />
</asp:Content>
