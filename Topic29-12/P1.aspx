<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="P1.aspx.cs" Inherits="Topic29_12.P1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
           <%-- <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="View State" OnClick="Button1_Click" />
            <asp:Label ID="Label6" runat="server" Text=""></asp:Label>
            <br />
            <hr />
            <br />
             <asp:HiddenField runat="server" ID="HF"></asp:HiddenField>
             <asp:Label ID="Label5" runat="server" Text="Last Name"></asp:Label>
            <asp:TextBox ID="TextBox5" runat="server" ></asp:TextBox>
            <asp:Button ID="Button2" runat="server" Text="Hidden Feild" OnClick="Button2_Click" />
            <asp:Label ID="Label7" runat="server" Text=""></asp:Label>

            <br />--%>
            <hr />
            <br />
              <asp:Label ID="Label4" runat="server" Text="Email"></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <asp:Button ID="Button3" runat="server" Text="Cookies" OnClick="Button3_Click" />
            <br />
            <asp:Button ID="Button7" runat="server" Text="Show Cookies" OnClick="Button7_Click" />

            <asp:Label ID="Label8" runat="server" Text=""></asp:Label>
<br />

            
             
          <%-- <br />
            <hr />
             <asp:Label ID="Label2" runat="server" Text="Age"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:Button ID="Button4" runat="server" Text="Session" OnClick="Button4_Click" />
            <asp:Label ID="Label9" runat="server" Text=""></asp:Label>
           <br />
            <hr />
            <br />
           
            <asp:Button ID="Button5" runat="server" Text="Applicaton" OnClick="Button5_Click" />
            <asp:Label ID="Label10" runat="server" Text=""></asp:Label>
            <br />
            <br />
            <hr />
            <table class="auto-style1">
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="First Name"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label11" runat="server" Text="Last Name"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="Button8" runat="server" Text="Query String" OnClick="Button8_Click" />
                    </td>
                </tr>
            </table>--%>
            <br /><hr />
            <asp:Button ID="Button6" runat="server" Text="Page" PostBackUrl="~/P2.aspx" />

           
        </div>
    </form>
</body>
</html>
