<%@ Page Title="" Language="C#" MasterPageFile="~/PetAPuppy.Master" AutoEventWireup="true" CodeBehind="TechSupportMain.aspx.cs" Inherits="PetaPuppy.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="StyleSheet1.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style8 {
            height: 829px;
        }
        .auto-style9 {
            height: 75%;
            margin-top: 0px;
            background-color: #474F53;
            margin-bottom: 0px;
            font-size: large;
            color: #FFFFFF;
            width: 53%;
            margin-left: 0px;
            position: fixed;
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
            width: 10%;
            height: 30%;
            top: 15%;
            left: 72%;
            margin-bottom: 0px;
            margin-top: 0px;
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
            width: 10%;
            height: 30%;
            top: 15%;
            left: 7.75%;
            margin-top: 0px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <p class="auto-style9">
        <br />
        <asp:Label ID="USernamelbl" runat="server" Text="Welcome %USERNAME%"></asp:Label>
        <br />
        <br />
&nbsp;<asp:Button ID="ViewUnassignedbtn" runat="server" Text="View All Unasigned Tickets" />
        <br />
        Edit Ticket
        <br />
        Enter Ticket ID:<asp:TextBox ID="TicketEditBox" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="EditTicketbtn" runat="server" Text="Edit Support Ticket" Height="21px" OnClick="EditTicketbtn_Click" Width="136px" />
        <br />
        <br />
        <asp:ListView ID="ListView1" runat="server" DataSourceID="PetAPuppyDefaultView" OnItemDataBound="ListView1_ItemDataBound" >
            <AlternatingItemTemplate>
                <tr style="">
                    <td>
                        <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ReportNameLabel" runat="server" Text='<%# Eval("ReportName") %>' />
                    </td>
                    <td>
                        <asp:Label ID="TicketCreateDateLabel" runat="server" Text='<%# Eval("TicketCreateDate") %>' />
                    </td>
                    <td>
                        <asp:Label ID="QueueLabel" runat="server" Text='<%# Eval("Queue") %>' />
                    </td>
                    <td>
                        <asp:Label ID="TechUserNameLabel" runat="server" Text='<%# Eval("TechUserName") %>' />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    </td>
                    <td>
                        <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="ReportNameTextBox" runat="server" Text='<%# Bind("ReportName") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="TicketCreateDateTextBox" runat="server" Text='<%# Bind("TicketCreateDate") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="QueueTextBox" runat="server" Text='<%# Bind("Queue") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="TechUserNameTextBox" runat="server" Text='<%# Bind("TechUserName") %>' />
                    </td>
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="">
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
                        <asp:TextBox ID="ReportNameTextBox" runat="server" Text='<%# Bind("ReportName") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="TicketCreateDateTextBox" runat="server" Text='<%# Bind("TicketCreateDate") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="QueueTextBox" runat="server" Text='<%# Bind("Queue") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="TechUserNameTextBox" runat="server" Text='<%# Bind("TechUserName") %>' />
                    </td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="color: #000000" runat="server" id="_itemrow">
                    <td>
                        <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ReportNameLabel" runat="server" Text='<%# Eval("ReportName") %>' />
                    </td>
                    <td>
                        
                             <asp:Label ID="TicketCreateDateLabel" runat="server" Text='<%# Eval("TicketCreateDate") %>' />
                       
                    </td>
                    <td>
                        <asp:Label ID="QueueLabel" runat="server" Text='<%# Eval("Queue") %>' />
                    </td>
                    <td>
                        <asp:Label ID="TechUserNameLabel" runat="server" Text='<%# Eval("TechUserName") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="0" style="border: medium solid #FFFFFF; left: 27%; top: 28%; position: absolute; height: 500px; width: 800px; font-family: Arial, Helvetica, sans-serif; font-size: medium; line-height: normal; vertical-align: middle; text-align: center; overflow: auto; display: table-column-group; color: #FFFFFF; text-transform: none; font-variant: normal; font-style: normal; font-weight: normal;">
                                <tr runat="server" style="border: medium solid #FFFFFF; color: #FFFFFF">
                                    <th runat="server">Id</th>
                                    <th runat="server">ReportName</th>
                                    <th runat="server">TicketCreateDate</th>
                                    <th runat="server">Queue</th>
                                    <th runat="server">TechUserName</th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style=""></td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="">
                    <td>
                        <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ReportNameLabel" runat="server" Text='<%# Eval("ReportName") %>' />
                    </td>
                    <td>
                        <asp:Label ID="TicketCreateDateLabel" runat="server" Text='<%# Eval("TicketCreateDate") %>' />
                    </td>
                    <td>
                        <asp:Label ID="QueueLabel" runat="server" Text='<%# Eval("Queue") %>' />
                    </td>
                    <td>
                        <asp:Label ID="TechUserNameLabel" runat="server" Text='<%# Eval("TechUserName") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="PetAPuppyDefaultView" runat="server" ConnectionString="<%$ ConnectionStrings:PetAPuppyWilliamWrightConnectionString %>" SelectCommand="SELECT [Id], [ReportName], [TicketCreateDate], [Queue], [TechUserName] FROM [Tickets] ORDER BY [TicketCreateDate]"></asp:SqlDataSource>
    </p>
    <p class="auto-style10">
        Tech User Settings<br />
        <br />
        <asp:Button ID="Button8" runat="server" CssClass="auto-style11" Height="25px" Text="Add A New Tech" Width="129px" OnClick="Button8_Click" />
        <br />
        OR<br />
        Enter Tech Username<br />
        <asp:TextBox ID="TechChanebox" runat="server" Width="140px"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="RemoveTech" runat="server" CssClass="auto-style11" Height="25px" Text="Remove A Tech" Width="135px" OnClick="RemoveTech_Click" />
        <br />
        <asp:Label ID="RemovedTechlbl" runat="server" ForeColor="#CC0000" Text="Tech Removed" Visible="False"></asp:Label>
        <br />
        <asp:Button ID="EditTEech" runat="server" CssClass="auto-style11" Height="25px" Text="Edit A Current Tech" Width="134px" OnClick="EditTEech_Click" />
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
        <br />
        <br />
        <br />
    </p>
</asp:Content>
