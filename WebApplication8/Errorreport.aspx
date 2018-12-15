<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Errorreport.aspx.cs" Inherits="WebApplication8.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style11 {
        width: 1432px;
        height: 18px;
        margin-left: 227px;
        margin-top: 0px;
        margin-bottom: 0px;
    }
    .auto-style12 {
        width: 1432px;
        height: 18px;
        text-align: center;
        margin-left: 227px;
        margin-top: 0px;
        margin-bottom: 0px;
    }
    .auto-style13 {
        width: 1432px;
        height: 22px;
        text-align: center;
        margin-left: 227px;
        margin-top: 0px;
        margin-bottom: 0px;
    }
    .auto-style14 {
        width: 1432px;
        height: 35px;
        text-align: center;
        margin-left: 226px;
        margin-top: 0px;
        margin-bottom: 0px;
        background-color: #FFFFFF;
    }
    .auto-style15 {
        margin-top: 5px;
        margin-left: 515px;
    }
    .auto-style17 {
        width: 1432px;
        text-align: center;
        margin-left: 226px;
        margin-top: 0px;
        margin-bottom: 0px;
        background-color: #FFFFFF;
    }
    .auto-style19 {
        width: 1434px;
        height: 38px;
        margin-left: 225px;
        margin-right: 0px;
    }
    .auto-style26 {
        margin-top: 11px;
        margin-bottom: 16px;
        margin-left: 90px;
        margin-right: 196px;
    }
        .auto-style29 {
            width: 1432px;
            text-align: center;
            margin-left: 227px;
            margin-top: 0px;
            margin-bottom: 0px;
            height: 52px;
        background-color: #FFFFFF;
    }
        .auto-style30 {
            margin-top: 18px;
        background-color: #FFFFFF;
    }
    .auto-style31 {
        width: 1432px;
        height: 42px;
        text-align: center;
        color: #000000;
        margin-left: 226px;
        margin-top: 0px;
        margin-bottom: 0px;
        background-color: #FFFFFF;
    }
    .auto-style32 {
        width: 1432px;
        height: 22px;
        text-align: center;
        color: #000000;
        margin-left: 226px;
        margin-top: 1px;
        margin-bottom: 0px;
        background-color: #FFFFFF;
    }
    .auto-style33 {
        width: 1432px;
        height: 21px;
        text-align: center;
        color: #FFFFFF;
        margin-left: 226px;
        margin-top: 0px;
        margin-bottom: 0px;
        background-color: #FFFFFF;
    }
        .auto-style34 {
            width: 1433px;
            height: 18px;
            color: #FFFFFF;
            font-size: xx-large;
            margin-left: 226px;
            margin-top: 0px;
            margin-bottom: 0px;
            background-color: #FFFFFF;
        }
    .auto-style35 {
        background-color: #FFFFFF;
    }
    .auto-style36 {
        width: 1431px;
        height: 22px;
        text-align: center;
        margin-left: 226px;
        margin-top: 0px;
        margin-bottom: 0px;
        background-color: #FFFFFF;
    }
    .auto-style37 {
        width: 1432px;
        height: 35px;
        text-align: left;
        margin-left: 226px;
        margin-top: 0px;
        margin-bottom: 0px;
        background-color: #FFFFFF;
    }
    .auto-style40 {
        margin-top: 11px;
        margin-bottom: 16px;
        margin-left: 277px;
        margin-right: 7px;
    }
    .auto-style41 {
        width: 488px;
        height: 35px;
        text-align: center;
        background-color: #FFFFFF;
    }
    .auto-style42 {
        width: 488px;
        text-align: center;
        height: 296px;
        background-color: #FFFFFF;
    }
    .auto-style43 {
        width: 579px;
        height: 35px;
        text-align: right;
        background-color: #FFFFFF;
    }
        .auto-style44 {
            width: 579px;
            text-align: center;
            height: 296px;
            background-color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style33">
        &nbsp;</p>
    <p class="auto-style31">
    Thank You For Visiting Our Support Website</p>
<p class="auto-style32">
    Below Please Enter The requested Information</p>
<p class="auto-style34">
    &nbsp;</p>
<p class="auto-style36">
    Please Enter Your Username&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Please Enter A Contact Email</p>
<p class="auto-style37">
    <asp:TextBox ID="Usernametxtbox" runat="server" BorderColor="Black" CssClass="auto-style15" Width="153px"></asp:TextBox>
    <span class="auto-style35">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </span>
    <asp:TextBox ID="Emailtxtbox" runat="server" BackColor="White" BorderColor="Black" Width="160px"></asp:TextBox>
</p>
<p class="auto-style17">
    &nbsp;</p>
<table class="auto-style19" border="0">
    <tr>
        <td class="auto-style43">Please Enter A Short Decription Of The Error</td>
        <td class="auto-style41">Please Enter The Steps To Recreate The Error</td>
    </tr>
    <tr>
        <td class="auto-style44">
            <asp:TextBox ID="Decriptionbox" runat="server" BorderColor="Black" CssClass="auto-style40" Height="257px" Width="310px"></asp:TextBox>
        </td>
        <td class="auto-style42">
            <asp:TextBox ID="recreatebox" runat="server" BorderColor="Black" CssClass="auto-style26" Height="257px" Width="310px"></asp:TextBox>
        </td>
    </tr>
</table>
    <p class="auto-style29">
        <asp:Button ID="Submitbtn" runat="server" CssClass="auto-style30" Height="24px" Text="Submit" Width="88px" />
    </p>
</asp:Content>
