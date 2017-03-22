<%@ Page Title="" Language="C#" MasterPageFile="~/PresentationLayer/HomePage.Master" AutoEventWireup="true" CodeBehind="WebForm10.aspx.cs" Inherits="CarRentalSystem1._1.PresentationLayer.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridViewEmployee" runat="server" AutoGenerateColumns="False"
        ShowFooter="True" onrowcancelingedit="GridViewEmployee_RowCancelingEdit"
        onrowediting="GridViewEmployee_RowEditing"
        onrowupdating="GridViewEmployee_RowUpdating"
        onrowdeleting="GridViewEmployee_RowDeleting">
    <Columns>
        <asp:TemplateField HeaderText="Car Code">
            <EditItemTemplate>
                <asp:TextBox ID="TextBoxEditEmployee" runat="server" Text='<%# Bind("CarCode") %>'/>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="LabelEmployee" runat="server" Text='<%# Bind("CarCode") %>'/>
            </ItemTemplate>
            <FooterTemplate>
                <asp:TextBox ID="TextBoxEmployee" runat="server"/>
            </FooterTemplate>
        </asp:TemplateField >
        <asp:TemplateField HeaderText="Car Type">
            <EditItemTemplate>
                <asp:TextBox ID="TextBoxEditPosition" runat="server" Text='<%# Bind("Cartype") %>'/>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="LabelPosition" runat="server" Text='<%# Bind("Cartype") %>'/>
            </ItemTemplate>
            <FooterTemplate>
                    <asp:TextBox ID="TextBoxPosition" runat="server"/>
            </FooterTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Location">
            <EditItemTemplate>
                <asp:TextBox ID="TextBoxEditTeam" runat="server" Text='<%# Bind("Location") %>'/>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="LabelTeam" runat="server" Text='<%# Bind("Location") %>'/>
            </ItemTemplate>
            <FooterTemplate>
                    <asp:TextBox ID="TextBoxTeam" runat="server"/>
            </FooterTemplate>
        </asp:TemplateField>
        <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
    </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
</asp:Content>
