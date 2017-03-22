<%@ Page Title="RegistrationPage" Language="C#" MasterPageFile="~/PresentationLayer/HomePage.Master" AutoEventWireup="true" CodeBehind="RegistrationPage.aspx.cs" Inherits="CarRentalSystem1._1.PresentationLayer.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
        width: 801px;
    }
        .auto-style5 {
            width: 187px;
        }
        .auto-style6 {
            height: 26px;
        }
        .auto-style7 {
            width: 187px;
            height: 26px;
        }
        .auto-style8 {
            width: 801px;
            height: 26px;
        }
        .auto-style9 {
            width: 164px;
        }
        .auto-style10 {
            height: 26px;
            width: 164px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%-- <body>
    <form id="form1" runat="server">--%>
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style9">Customer Name</td>
                <td>&nbsp;</td>
                <td>
                    <asp:TextBox ID="CustomerName" runat="server" OnTextChanged="CustomerName_TextChanged" MaxLength="30" ToolTip="Max length 30"></asp:TextBox>
                </td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">Gender</td>
                <td>&nbsp;</td>
                <td>
                    <asp:RadioButtonList ID="CustomerGender" runat="server" RepeatDirection="Horizontal" ToolTip="Gender" Width="194px">
                        <asp:ListItem Value="M">Male</asp:ListItem>
                        <asp:ListItem Value="F">Female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">Address</td>
                <td>&nbsp;</td>
                <td>
                    <asp:TextBox ID="CustomerAddress" runat="server" TextMode="MultiLine" MaxLength="1000" ToolTip="Max length 1000"></asp:TextBox>
                </td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">Contact Number*</td>
                <td>&nbsp;</td>
                <td>
                    <asp:TextBox ID="CustomerContactNumber" runat="server" TextMode="Phone" MaxLength="13"></asp:TextBox>
                </td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">Email ID*</td>
                <td class="auto-style6"></td>
                <td class="auto-style6">
                    <asp:TextBox ID="CustomerEmailId" runat="server" TextMode="Email" MaxLength="40" ToolTip="Max length 40"></asp:TextBox>
                </td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style8"></td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style4">.</td>
            </tr>
            <tr>
                <td class="auto-style9">Password*</td>
                <td>&nbsp;</td>
                <td>
                    <asp:TextBox ID="Password" runat="server" TextMode="Password" MaxLength="30" ToolTip="Max length 30"></asp:TextBox>
                </td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style5">.</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">Retype Password</td>
                <td>&nbsp;</td>
                <td>
                    <asp:TextBox ID="RetypePassword" runat="server" TextMode="Password" MaxLength="30" ToolTip="Max length 30s"></asp:TextBox>
                </td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td>
                    <asp:Button ID="SubmitButton" runat="server" Height="27px" OnClick="SubmitButton_Click" Text="Register" Width="155px" />
                </td>
                <td>
                    <asp:Button ID="LoginButton" runat="server" Height="27px" OnClick="LoginButton_Click" Text="Already User" Width="155px" />
                </td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
        </table>
    
    </div>
    <%--</form>
</body>--%>
</asp:Content>
