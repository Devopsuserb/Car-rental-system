<%@ Page Title="Book the car" Language="C#" MasterPageFile="~/PresentationLayer/HomePage.Master" AutoEventWireup="true" CodeBehind="BookACar.aspx.cs" Inherits="CarRentalSystem1._1.PresentationLayer.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style8 {
        width: 99%;
    }
    .auto-style9 {
        width: 98%;
    }
    .auto-style10 {
        width: 97%;
    }
    .auto-style11 {
        width: 96%;
    }
    .auto-style19 {
        width: 98%;
        height: 16px;
    }
    .auto-style21 {
        width: 96%;
        height: 16px;
    }
    .auto-style24 {
        width: 3%;
    }
    .auto-style25 {
        width: 3%;
        height: 16px;
    }
    .auto-style26 {
        width: 20%;
    }
    .auto-style27 {
        width: 20%;
        height: 16px;
    }
    .auto-style28 {
        width: 4%;
    }
    .auto-style29 {
        width: 4%;
        height: 16px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--<body>
    <form id="form1" runat="server">--%>
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style25">Location</td>
                <td class="auto-style27">
                    <asp:TextBox ID="Location" runat="server" Enabled="False" TextMode="Date" ToolTip="Car rental per days"></asp:TextBox>
                </td>
                <td class="auto-style29">
                    </td>
                <td class="auto-style19">
                    </td>
                <td class="auto-style21"></td>
                <td class="auto-style21"></td>
            </tr>
            <tr>
                <td class="auto-style24">&nbsp;</td>
                <td class="auto-style26">
                    &nbsp;</td>
                <td class="auto-style28">
                    &nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style24">Date of Hire</td>
                <td class="auto-style26">
                    <asp:DropDownList ID="DateOfTravel" runat="server" Height="23px" Width="148px">
                        <asp:ListItem Value="1">Today</asp:ListItem>
                        <asp:ListItem Value="2">Tomorrow</asp:ListItem>
                        <asp:ListItem Value="3">Next Day</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style28">
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="27px" ImageUrl="~/Pictures/dateicon.gif" OnClick="ImageButton1_Click" ToolTip="Car rental per days" Width="23px" />
                </td>
                <td class="auto-style8" rowspan="5">
                    <asp:Calendar ID="HiringDateSelection" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" OnSelectionChanged="HiringDateSelection_SelectionChanged" ToolTip="Car rental per days" Visible="False" Width="200px">
                        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                        <NextPrevStyle VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#808080" />
                        <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                        <SelectorStyle BackColor="#CCCCCC" />
                        <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                        <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <WeekendDayStyle BackColor="#FFFFCC" />
                    </asp:Calendar>
                </td>
                <td class="auto-style10">.</td>
                <td class="auto-style10">.</td>
                <td rowspan="5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style24"></td>
                <td class="auto-style27"></td>
                <td class="auto-style29"></td>
            </tr>
            <tr>
                <td class="auto-style24"></td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style28"></td>
            </tr>
            <tr>
                <td class="auto-style24"></td>
                <td class="auto-style27"></td>
                <td class="auto-style29"></td>
            </tr>
            <tr>
                <td class="auto-style24">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style28">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style24">Vehicle Type</td>
                <td class="auto-style26">
                    <asp:TextBox ID="VehicleType" runat="server" Enabled="False" TextMode="Date" ToolTip="Car rental per days"></asp:TextBox>
                </td>
                <td class="auto-style28">
                    &nbsp;</td>
                <td class="auto-style9">
                    &nbsp;</td>
                <td class="auto-style11"></td>
                <td class="auto-style11">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style24"></td>
                <td class="auto-style26"></td>
                <td class="auto-style28"></td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style11"></td>
                <td class="auto-style11"></td>
            </tr>
            <tr>
                <td class="auto-style24">
                    <asp:Button ID="CheckAvailability" runat="server" Text="Book" Width="108px" OnClick="CheckAvailability_Click" />
                </td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style28">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style24">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style28">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style24">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style28">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style24">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style28">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style24">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style28">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style24">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style28">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style24">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style28">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
        </table>
    
    </div>
    <%--</form>
</body>--%>
</asp:Content>
