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
            width: 10%;
            height: 38%;
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
            height: 35%;
            top: 55%;
            left: 72%;
            margin-bottom: 0px;
            margin-top: 0px;
        }
        </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <p class="auto-style9">
        <br />
        <asp:Label ID="USernamelbl" runat="server" Text="Welcome %USERNAME%"></asp:Label>
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
                <tr style="background-color: #FFFFFF; border: thin solid #FFFFFF; color: #000000">
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
                <tr style="background-color: #FFFFFF; border: thin solid #FFFFFF; color: #000000">
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
                <tr style="background-color: #FFFFFF; border: thin solid #FFFFFF; color: #000000">
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
                <tr style="background-color: #FFFFFF; border: thin solid #FFFFFF; color: #000000" runat="server" id="_itemrow">
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
                            <table id="itemPlaceholderContainer" runat="server" border="0" style="border: medium solid #FFFFFF; left: 25%; top: 28%; position: absolute; height: 500px; width: 800px; font-family: Arial, Helvetica, sans-serif; font-size: medium; line-height: normal; vertical-align: middle; text-align: center; overflow: auto; display: table-column-group; color: #FFFFFF; text-transform: none; font-variant: normal; font-style: normal; font-weight: normal;">
                                <tr runat="server" style="border: medium solid #000000; color: #000000; background-color: #FFFFFF;">
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
                        <td runat="server" style="background-color: #FFFFFF; border: thin solid #FFFFFF; color: #000000"></td>
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
        <asp:SqlDataSource ID="PetAPuppyDefaultView" runat="server" ConnectionString="<%$ ConnectionStrings:PetAPuppyWilliamWrightConnectionString %>" SelectCommand="SELECT Id, ReportName, TicketCreateDate, Queue, ErrorType , TechUserName,ErrorDecription  FROM Tickets ORDER BY TicketCreateDate"></asp:SqlDataSource>
    </p>
    <p class="auto-style10">
        Technician User Settings<br />
        <br />
        Current Signed In Technician<br />
        <asp:Label ID="Usernamesignedinlbl" runat="server" Text="%Username%"></asp:Label>
        <br />
        <asp:Button ID="Button9" runat="server" Font-Size="Smaller" Height="20px" OnClick="Button9_Click" Text="Signout" Width="70px" />
        <br />
        <br />
        Technician Options<br />
        <br />
        <asp:Button ID="Button8" runat="server" CssClass="auto-style11" Height="25px" Text="Add A New Technician" Width="154px" OnClick="Button8_Click" />
        <br />
        OR<br />
        Enter Technician Username<br />
        <asp:TextBox ID="TechChanebox" runat="server" Width="152px"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="RemoveTech" runat="server" CssClass="auto-style11" Height="25px" Text="Remove Technician" Width="158px" OnClick="RemoveTech_Click" />
        <br />
        <asp:Label ID="RemovedTechlbl" runat="server" ForeColor="#CC0000" Text="Technician Removed" Visible="False"></asp:Label>
        <br />
        <asp:Button ID="EditTEech" runat="server" CssClass="auto-style11" Height="25px" Text="Edit Technician Settings" Width="161px" OnClick="EditTEech_Click" />
    </p>
    <p class="auto-style12">
        Current System Stats<br />
        <br />
        <asp:Image ID="DatabaseStatusphoto" runat="server" Height="64px" ImageUrl="~/icon/icons8-checkmark-64.png" Width="64px" />
        <br />
        System Online<br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </p>
    <p class="auto-style8">
    </p>
    </asp:Content>
