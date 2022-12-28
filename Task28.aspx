<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Task28.aspx.cs" Inherits="Task28_12_2022.Task28" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Styles/sweetalert.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.js"></script>
    <script src="Scripts/sweetalert.min.js"></script>
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                <asp:TextBox ID="TextBox2" runat="server" placeholder="Your Name ..."></asp:TextBox> <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Fill All Feilds" ControlToValidate="TextBox2" ValidationGroup="comm" style="color:red;">*</asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="TextBox1" runat="server" placeholder="Add Comment ..."></asp:TextBox> <br />
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Fill All Feilds" ControlToValidate="TextBox1" ValidationGroup="comm" style="color:red;">*</asp:RequiredFieldValidator>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="comm" style="color:red;"/>
                    <br />
                    <asp:Button ID="Button1" runat="server" Text="Post" OnClick="Button1_Click" ValidationGroup="comm" />
                    <br />
                    <hr />
                    <asp:Label ID="info" runat="server" Text=""></asp:Label>
                </ContentTemplate>
            </asp:UpdatePanel>
            <script type="text/javascript">
        function successalert() {
            swal({
                title: ' Successfully Insert!',
                text: 'Your message has been succesfully sent',
                type: 'success'
            });
        }
            </script>
        </div>
    </form>
</body>
</html>
