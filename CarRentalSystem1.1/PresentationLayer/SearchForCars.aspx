<%@ Page Title="Search For Cars" Language="C#" MasterPageFile="~/PresentationLayer/HomePage.Master" AutoEventWireup="true" CodeBehind="SearchForCars.aspx.cs" Inherits="CarRentalSystem1._1.PresentationLayer.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style9 {
            width: 619px;
            height: 16px;
        }
        .auto-style10 {
            width: 227px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
            <tr>
                <td class="auto-style10">
                    <asp:Label ID="Modeofselection" runat="server" style="z-index: 1; left: 13px; top: 65px;" Text="Mode of selection"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:DropDownList ID="SelectionMode" runat="server" AutoPostBack="True" Height="23px" Width="148px">
                        <asp:ListItem Value="0">Select</asp:ListItem>
                        <asp:ListItem Value="1">Based on Location</asp:ListItem>
                        <asp:ListItem Value="2">Based on Date</asp:ListItem>
                        <asp:ListItem Value="3">Based on Vehicle type</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style7">
                    <asp:LinkButton ID="BackLinkButton" runat="server" Height="23px" OnClick="BackLinkButton_Click" style="text-align: center" Visible="False" Width="120px">Reselect</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">
                    <asp:Label ID="VehicleTypeLabel" runat="server" Text="Type Of Vehicle" Visible="False"></asp:Label>
                    <asp:GridView ID="GridView1" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" OnRowCommand="GridView1_RowCommand" OnRowDataBound="GridView1_RowDataBound" style="z-index: 1; left: 34px; top: 236px; position: absolute; height: 211px; width: 575px; margin-top: 0px;" Visible="False">
                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
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
                </td>
                <td class="auto-style9">
                    <asp:DropDownList ID="VehicleTypeList" runat="server" EnableTheming="True" Height="23px" Visible="False" Width="148px">
                        <asp:ListItem>Luxury</asp:ListItem>
                        <asp:ListItem>Minivan</asp:ListItem>
                        <asp:ListItem>Hybrid</asp:ListItem>
                        <asp:ListItem>SUV</asp:ListItem>
                        <asp:ListItem>Passenger Van Rental</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">
                    <asp:Label ID="LocationBasedSelction" runat="server" Text="Select your location" Visible="False"></asp:Label>
                </td>
                <td class="auto-style11">
                    <asp:DropDownList ID="LocationList" runat="server" Height="23px" Visible="False" Width="148px">
                    </asp:DropDownList>
                </td>
                <td class="auto-style12"></td>
                <td class="auto-style7"></td>
            </tr>
            <tr>
                <td class="auto-style10">
                    <asp:Label ID="DateOfTravelLabel" runat="server" Text="Date of Travel" Visible="False"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:DropDownList ID="DateOfTravel" runat="server" Height="23px" Visible="False" Width="148px">
                        <asp:ListItem Value="1">Today</asp:ListItem>
                        <asp:ListItem Value="2">Tomorrow</asp:ListItem>
                        <asp:ListItem Value="3">Next Day</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style3">
                    <asp:ImageButton ID="DateIcon" runat="server" Height="19px" ImageUrl="~/Pictures/dateicon.gif" OnClick="DateIcon_Click" Visible="False" Width="19px" />
                </td>
                <td class="auto-style7" rowspan="5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">
                    <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged1" style="z-index: 1; left: 898px; top: 267px; position: absolute; height: 169px; width: 189px" Visible="False" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" Width="200px">
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
                <td class="auto-style6"></td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style9">
                    <asp:LinkButton ID="CheckAvailabilityLinkButton" runat="server" Height="23px" OnClick="CheckAvailabilityLinkButton_Click" style="text-align: center" Width="148px">Check Availability</asp:LinkButton>
                </td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10"></td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style3"></td>
                <td class="auto-style9"></td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style7">
                    <asp:LinkButton ID="LinkButtonToLoginPage" runat="server" Height="23px" OnClick="LinkButtonToLoginPage_Click" Visible="False" Width="120px">Proceed to Book</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">.</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style7">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
        </table>
    <div>
    
    </div>
    <%--</form>
</body>--%>
</asp:Content>
