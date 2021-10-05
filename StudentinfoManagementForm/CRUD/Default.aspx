<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CRUD._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
<div>
    <div style="font-size:x-large" align="center">Student Info Manage Form </div>
    <table class="nav-justified">
        <tr>
            <td style="width: 355px; height: 19px"></td>
            <td style="height: 19px; width: 224px">Stuedent ID</td>
            <td style="height: 19px">
                <asp:TextBox ID="TextBox1" runat="server" Font-Size="Medium" OnTextChanged="TextBox1_TextChanged" Width="266px"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td style="width: 355px; height: 19px;">&nbsp;</td>
            <td style="width: 224px; height: 19px;">Student Name</td>
            <td style="height: 19px">
                <asp:TextBox ID="TextBox2" runat="server" Font-Size="Medium" OnTextChanged="TextBox1_TextChanged" Width="266px"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td style="width: 355px">&nbsp;</td>
            <td style="width: 224px">Address</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>Dhaka</asp:ListItem>
                    <asp:ListItem>Chittagong</asp:ListItem>
                    <asp:ListItem>Comilla</asp:ListItem>
                </asp:DropDownList>
                <br />
            </td>
        </tr>
        <tr>
            <td style="width: 355px; height: 19px;"></td>
            <td style="width: 224px; height: 19px;">Age</td>
            <td style="height: 19px">
                <asp:TextBox ID="TextBox3" runat="server" Font-Size="Medium" OnTextChanged="TextBox1_TextChanged" Width="266px"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td style="width: 355px">&nbsp;</td>
            <td style="width: 224px">Contact</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Font-Size="Medium" OnTextChanged="TextBox1_TextChanged" Width="266px"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td style="width: 355px">&nbsp;</td>
            <td style="width: 224px">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" BackColor="#FF66FF" BorderColor="#660066" Text="Insert" OnClick="Button1_Click" />
            &nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" BackColor="#00FF99" BorderColor="#660066" Text="Update" OnClick="Button2_Click" />
            &nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" BackColor="Red" BorderColor="Red" Text="Delete" OnClick="Button3_Click" />
            &nbsp;&nbsp;
                <asp:Button ID="Button4" runat="server" BackColor="Yellow" BorderColor="Red" Text="Search" OnClick="Button4_Click" />
            </td>
        </tr>
    </table>
    <asp:GridView ID="GridView1" runat="server" Height="137px" style="margin-left: 161px; margin-top: 36px" Width="1140px">
    </asp:GridView>
    <br/>

    

</div>

</asp:Content>
