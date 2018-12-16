<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication8.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style12 {
        width: 1437px;
        height: 28px;
        text-align: center;
        margin-left: 227px;
        margin-top: 0px;
        margin-bottom: 0px;
    }
    .auto-style13 {
        width: 78%;
        height: 53px;
        margin-left: 227px;
    }
    .auto-style15 {
        width: 612px;
        height: 23px;
        text-align: right;
        background-color: #FEFFFF;
    }
    .auto-style16 {
        text-align: left;
        height: 23px;
        background-color: #FEFFFF;
    }
    .auto-style17 {
        height: 23px;
        background-color: #FEFFFF;
    }
    .auto-style18 {
        width: 1434px;
        height: 43px;
        text-align: center;
        margin-left: 227px;
        margin-top: 0px;
        margin-bottom: 0px;
        background-color: #FEFFFF;
    }
    .auto-style19 {
        margin-top: 10px;
        background-color: #FEFFFF;
    }
    .auto-style20 {
        width: 1434px;
        height: 28px;
        color: #FFFFFF;
        margin-left: 226px;
        margin-top: 0px;
        margin-bottom: 0px;
        background-color: #FFFFFF;
    }
    .auto-style21 {
        width: 1434px;
        height: 28px;
        text-align: center;
        color: #000000;
        margin-left: 226px;
        margin-top: 0px;
        margin-bottom: 0px;
        background-color: #FFFFFF;
    }
    .auto-style22 {
        width: 1434px;
        height: 53px;
        margin-left: 226px;
        margin-top: 0px;
    }
        .auto-style23 {
            color: #FF0000;
        }
    </style>
</asp:Content>
<asp:Content ID="Login" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style20">
        <asp:SiteMapPath ID="SiteMapPath2" runat="server" Font-Names="Verdana" Font-Size="0.8em" PathSeparator=" : ">
            <CurrentNodeStyle ForeColor="#333333" />
            <NodeStyle Font-Bold="True" ForeColor="#284E98" />
            <PathSeparatorStyle Font-Bold="True" ForeColor="#507CD1" />
            <RootNodeStyle Font-Bold="True" ForeColor="#507CD1" />
        </asp:SiteMapPath>
</p>
<p class="auto-style21">
    Pet A Puppy Tech Login</p>
<p class="auto-style21">
            <asp:Label ID="Globalerror" runat="server" CssClass="auto-style23" Text="Invalid login, Please Try Again" Visible="False"></asp:Label>
        </p>
<table class="auto-style22">
    <tr>
        <td class="auto-style15">Username:&nbsp;&nbsp; </td>
        <td class="auto-style16" style="border-width: 0px">
            <asp:TextBox ID="Usernametxtbox" runat="server" BorderColor="Black" Width="199px"></asp:TextBox>
        &nbsp;&nbsp;
            <asp:Label ID="usernameerrorlbl" runat="server" CssClass="auto-style23" Text="The username you Enterned is incorrect " Visible="False"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style15" colspan="0">Password:&nbsp;&nbsp; </td>
        <td class="auto-style17" colspan="0" style="border-width: 0px">
            <asp:TextBox ID="Passwordtxtbox" runat="server" BorderColor="Black" Width="199px"></asp:TextBox>
        &nbsp;&nbsp;
            <asp:Label ID="passworderrorlbl" runat="server" CssClass="auto-style23" Text="The Password You entered Is incorrect" Visible="False"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style15">2-Factor Code:&nbsp;&nbsp; </td>
        <td class="auto-style17" colspan="0" rowspan="0" style="border-width: 0px">
            <asp:TextBox ID="factortext" runat="server" BorderColor="Black" Width="199px"></asp:TextBox>
        &nbsp;&nbsp;
            <asp:Label ID="factorerrorlbl" runat="server" CssClass="auto-style23" Text="The 2-Factor Code is Incorrect" Visible="False"></asp:Label>
        </td>
    </tr>
</table>
<p class="auto-style18">
    <asp:Button ID="submitbtn" runat="server" CssClass="auto-style19" Height="24px" Text="Submit" Width="91px" OnClick="submitbtn_Click" />
</p>
</asp:Content>
