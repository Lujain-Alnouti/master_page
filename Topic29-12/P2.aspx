<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="P2.aspx.cs" Inherits="Topic29_12.P2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .Red{
            color:red;
        }
        .black{
            color:black;
        }
        .blue{
            color:blue;
        }
        .orange{
            color:orange;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button1" runat="server" Text="Back" PostBackUrl="~/Task29.aspx" /> <br />
            
                  <asp:Label ID="Label3" runat="server" Text="" style="border:3px Solid brown; font-size:30px" ></asp:Label>            <br />
                  <br /><br />
            <asp:DropDownList ID="DropDownList1" runat="server" >
                <asp:ListItem Value="black">Black</asp:ListItem>
                <asp:ListItem Value="blue">Blue</asp:ListItem>
                <asp:ListItem Value="red">Red</asp:ListItem>
                <asp:ListItem Value="orange">Orange</asp:ListItem>
            </asp:DropDownList>
            <asp:Button ID="Button2" runat="server" Text="Change Color" OnClick="Button2_Click" />
            
           <%-- <asp:Label ID="Label1" runat="server" Text="F Name : "></asp:Label>
            <br />
            <asp:Label ID="Label2" runat="server" Text="L Name : "></asp:Label>            <br />--%>

           <%-- <asp:Label ID="Label4" runat="server" Text="Age : "></asp:Label>            <br />

            <asp:Label ID="Label6" runat="server" Text="# User : "></asp:Label>            <br />--%>

        </div>
    </form>
</body>
</html>
