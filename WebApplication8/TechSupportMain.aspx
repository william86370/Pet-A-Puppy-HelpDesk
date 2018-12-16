<%@ Page Title="" Language="C#" MasterPageFile="~/PetAPuppy.Master" AutoEventWireup="true" CodeBehind="TechSupportMain.aspx.cs" Inherits="PetaPuppy.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="StyleSheet1.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style8 {
            height: 829px;
        }
        .auto-style9 {
            height: 723px;
            margin-top: 0px;
            background-color: #474F53;
            margin-bottom: 0px;
            font-size: large;
            color: #FFFFFF;
            width: 1335px;
            margin-left: 0px;
            position: absolute;
            left: 18%;
            top: 15%;
        }
        .auto-style10 {
            font-family: "Arial Narrow";
            font-size: medium;
            color: #FFFFFF;
            vertical-align: middle;
            text-align: center;
            background-color: #474F53;
            position: absolute;
            left: 81%;
            width: 187px;
            height: 356px;
            top: 15%;
            right: 225px;
        }
        .auto-style11 {
            margin-top: 0px;
        }
        .auto-style12 {
            font-family: "Arial Narrow";
            font-size: medium;
            color: #FFFFFF;
            vertical-align: middle;
            text-align: center;
            background-color: #474F53;
            position: absolute;
            left: 8%;
            width: 187px;
            height: 283px;
            top: 15%;
            right: 1800px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style9">
        <br />
        <asp:Label ID="Label1" runat="server" Text="Welcome %USERNAME%"></asp:Label>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Edit Support Ticket" />
&nbsp;<asp:Button ID="Button2" runat="server" Text="View All Unasigned Tickets" />
        <br />
        <br />
        <asp:ListView ID="ListView1" runat="server" DataSourceID="PetAPuppyDefaultView">
            <AlternatingItemTemplate>
                <tr style="background-color: #FFFFFF;color: #284775;">
                    <td>
                        <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                    </td>
                    <td>
                        <asp:Label ID="TechUserNameLabel" runat="server" Text='<%# Eval("TechUserName") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ReportNameLabel" runat="server" Text='<%# Eval("ReportName") %>' />
                    </td>
                    <td>
                        <asp:Label ID="QueueLabel" runat="server" Text='<%# Eval("Queue") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ContactUsernameLabel" runat="server" Text='<%# Eval("ContactUsername") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ContactEmailLabel" runat="server" Text='<%# Eval("ContactEmail") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ErrorDecriptionLabel" runat="server" Text='<%# Eval("ErrorDecription") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ErrorStepsLabel" runat="server" Text='<%# Eval("ErrorSteps") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ErrorTypeLabel" runat="server" Text='<%# Eval("ErrorType") %>' />
                    </td>
                    <td>
                        <asp:Label ID="TicketCreateDateLabel" runat="server" Text='<%# Eval("TicketCreateDate") %>' />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr style="background-color: #999999;">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    </td>
                    <td>
                        <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="TechUserNameTextBox" runat="server" Text='<%# Bind("TechUserName") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="ReportNameTextBox" runat="server" Text='<%# Bind("ReportName") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="QueueTextBox" runat="server" Text='<%# Bind("Queue") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="ContactUsernameTextBox" runat="server" Text='<%# Bind("ContactUsername") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="ContactEmailTextBox" runat="server" Text='<%# Bind("ContactEmail") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="ErrorDecriptionTextBox" runat="server" Text='<%# Bind("ErrorDecription") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="ErrorStepsTextBox" runat="server" Text='<%# Bind("ErrorSteps") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="ErrorTypeTextBox" runat="server" Text='<%# Bind("ErrorType") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="TicketCreateDateTextBox" runat="server" Text='<%# Bind("TicketCreateDate") %>' />
                    </td>
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    </td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:TextBox ID="TechUserNameTextBox" runat="server" Text='<%# Bind("TechUserName") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="ReportNameTextBox" runat="server" Text='<%# Bind("ReportName") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="QueueTextBox" runat="server" Text='<%# Bind("Queue") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="ContactUsernameTextBox" runat="server" Text='<%# Bind("ContactUsername") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="ContactEmailTextBox" runat="server" Text='<%# Bind("ContactEmail") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="ErrorDecriptionTextBox" runat="server" Text='<%# Bind("ErrorDecription") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="ErrorStepsTextBox" runat="server" Text='<%# Bind("ErrorSteps") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="ErrorTypeTextBox" runat="server" Text='<%# Bind("ErrorType") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="TicketCreateDateTextBox" runat="server" Text='<%# Bind("TicketCreateDate") %>' />
                    </td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="background-color: #E0FFFF;color: #333333;">
                    <td>
                        <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                    </td>
                    <td>
                        <asp:Label ID="TechUserNameLabel" runat="server" Text='<%# Eval("TechUserName") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ReportNameLabel" runat="server" Text='<%# Eval("ReportName") %>' />
                    </td>
                    <td>
                        <asp:Label ID="QueueLabel" runat="server" Text='<%# Eval("Queue") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ContactUsernameLabel" runat="server" Text='<%# Eval("ContactUsername") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ContactEmailLabel" runat="server" Text='<%# Eval("ContactEmail") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ErrorDecriptionLabel" runat="server" Text='<%# Eval("ErrorDecription") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ErrorStepsLabel" runat="server" Text='<%# Eval("ErrorSteps") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ErrorTypeLabel" runat="server" Text='<%# Eval("ErrorType") %>' />
                    </td>
                    <td>
                        <asp:Label ID="TicketCreateDateLabel" runat="server" Text='<%# Eval("TicketCreateDate") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr runat="server" style="background-color: #E0FFFF;color: #333333;">
                                    <th runat="server">Id</th>
                                    <th runat="server">TechUserName</th>
                                    <th runat="server">ReportName</th>
                                    <th runat="server">Queue</th>
                                    <th runat="server">ContactUsername</th>
                                    <th runat="server">ContactEmail</th>
                                    <th runat="server">ErrorDecription</th>
                                    <th runat="server">ErrorSteps</th>
                                    <th runat="server">ErrorType</th>
                                    <th runat="server">TicketCreateDate</th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF"></td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="background-color: #E2DED6;font-weight: bold;color: #333333;">
                    <td>
                        <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                    </td>
                    <td>
                        <asp:Label ID="TechUserNameLabel" runat="server" Text='<%# Eval("TechUserName") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ReportNameLabel" runat="server" Text='<%# Eval("ReportName") %>' />
                    </td>
                    <td>
                        <asp:Label ID="QueueLabel" runat="server" Text='<%# Eval("Queue") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ContactUsernameLabel" runat="server" Text='<%# Eval("ContactUsername") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ContactEmailLabel" runat="server" Text='<%# Eval("ContactEmail") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ErrorDecriptionLabel" runat="server" Text='<%# Eval("ErrorDecription") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ErrorStepsLabel" runat="server" Text='<%# Eval("ErrorSteps") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ErrorTypeLabel" runat="server" Text='<%# Eval("ErrorType") %>' />
                    </td>
                    <td>
                        <asp:Label ID="TicketCreateDateLabel" runat="server" Text='<%# Eval("TicketCreateDate") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="PetAPuppyDefaultView" runat="server" ConnectionString="<%$ ConnectionStrings:PetAPuppyWilliamWrightConnectionString %>" SelectCommand="SELECT * FROM [Tickets]"></asp:SqlDataSource>
    </p>
    <p class="auto-style10">
        Tech User Settings<br />
        <br />
        <asp:Button ID="Button8" runat="server" CssClass="auto-style11" Height="25px" Text="Add New Tech" Width="129px" />
        <br />
        <br />
        <asp:Button ID="Button9" runat="server" CssClass="auto-style11" Height="25px" Text="Remove Current Tech" Width="135px" />
        <br />
        <br />
        <asp:Button ID="Button10" runat="server" CssClass="auto-style11" Height="25px" Text="Edit Current Tech" Width="105px" />
        <br />
        <br />
        <asp:Button ID="Button11" runat="server" CssClass="auto-style11" Height="25px" Text="Add New Tech" Width="105px" />
        <br />
        <br />
        <asp:Button ID="Button12" runat="server" CssClass="auto-style11" Height="25px" Text="Add New Tech" Width="105px" />
        <br />
    </p>
    <p class="auto-style8">
    </p>
    <p class="auto-style12">
        Ticket Sorting Settings<br />
        <br />
        <asp:Button ID="Button3" runat="server" CssClass="auto-style11" Height="25px" Text="View All Open Tickets" Width="144px" />
        <br />
        <br />
        <asp:Button ID="Button4" runat="server" CssClass="auto-style11" Height="25px" Text="View Assigned Tickets" Width="144px" />
        <br />
        <br />
        <asp:Button ID="Button5" runat="server" CssClass="auto-style11" Height="25px" Text="View Closed Tickets" Width="142px" />
        <br />
        <br />
        <asp:Button ID="Button6" runat="server" CssClass="auto-style11" Height="25px" Text="Add New Tech" Width="105px" />
        <br />
        <br />
        <asp:Button ID="Button7" runat="server" CssClass="auto-style11" Height="25px" Text="Add New Tech" Width="105px" />
        <br />
    </p>
</asp:Content>
