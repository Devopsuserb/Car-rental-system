<%@ Page Title="Available Car details" Language="C#" MasterPageFile="~/PresentationLayer/HomePage.Master" AutoEventWireup="true" CodeBehind="AdminCarDetails.aspx.cs" Inherits="CarRentalSystem1._1.PresentationLayer.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" CellPadding="2" ForeColor="Black" GridLines="None" Height="344px" Width="740px" ShowFooter="True" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" OnRowDeleting="GridView1_RowDeleting">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>
            <asp:TemplateField HeaderText="Car Code">
                <EditItemTemplate>
                <asp:TextBox ID="TextBoxCarCode" runat="server" Text='<%# Bind("CarCode") %>'/>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="LabelCarCode" runat="server" Text='<%# Bind("CarCode") %>'/>
            </ItemTemplate>
            <FooterTemplate>
                <asp:TextBox ID="TextBoxCarCode" runat="server"/>
            </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Car Type">
                <EditItemTemplate>
                <asp:TextBox ID="TextBoxCartype" runat="server" Text='<%# Bind("Cartype") %>'/>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="LabelCartype" runat="server" Text='<%# Bind("Cartype") %>'/>
            </ItemTemplate>
            <FooterTemplate>
                    <asp:TextBox ID="TextBoxCartype" runat="server"/>
            </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Location">
                <EditItemTemplate>
                <asp:TextBox ID="TextBoxLocation" runat="server" Text='<%# Bind("Location") %>'/>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="LabelLocation" runat="server" Text='<%# Bind("Location") %>'/>
            </ItemTemplate>
            <FooterTemplate>
                    <asp:TextBox ID="TextBoxLocation" runat="server"/>
            </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Car Status">
                <EditItemTemplate>
                <asp:Label ID="TextBoxcarstatus" runat="server" Text='<%# Bind("carstatus") %>'/>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Labelcarstatus" runat="server" Text='<%# Bind("carstatus") %>'/>
            </ItemTemplate>
            <FooterTemplate>
                    <asp:Button ID="Button1" runat="server" Text="Add New" OnClick="Button1_Click" />
            </FooterTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <SortedAscendingCellStyle BackColor="#FAFAE7" />
        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
        <SortedDescendingCellStyle BackColor="#E1DB9C" />
        <SortedDescendingHeaderStyle BackColor="#C2A47B" />

    </asp:GridView>
</asp:Content>
