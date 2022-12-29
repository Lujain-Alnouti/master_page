<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Task29.aspx.cs" Inherits="Topic29_12.Task29" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
           <%-- <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>--%>
                    <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
                    <br />
                    <asp:TextBox ID="UN" runat="server"></asp:TextBox>
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                    <br />
                    <asp:TextBox ID="pass" runat="server" type="password"></asp:TextBox><br />
            <asp:CheckBox ID="CheckBox1" runat="server" /><asp:Label ID="Label3" runat="server" Text="Remember me"></asp:Label>
                    <br /><br />
            <asp:Button ID="Button1" runat="server" Text="Login" Style="background-color: green; color: white" OnClick="Button1_Click" />
                    

<%--                </ContentTemplate>
            </asp:UpdatePanel>--%>

        </div>
    </form>
</body>
</html>
