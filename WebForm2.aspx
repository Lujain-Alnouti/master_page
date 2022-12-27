<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="task1_27_12.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="vh-100 d-flex justify-content-center align-items-center">
            <div class="col-md-4 p-5 shadow-sm border rounded-5 border-primary">
                <h2 class="text-center mb-4 text-primary">Signup</h2>
              
                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Email address</label>
                        <asp:TextBox ID="TextBox3" runat="server" type="email" CssClass="form-control bg-info bg-opacity-10 border border-primary" aria-describedby="emailHelp"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Fill All Fields S" ControlToValidate="TextBox3" ValidationGroup="fill2">*</asp:RequiredFieldValidator>

                    </div>
                    <div class="mb-3">
                        <label for="exampleInputPassword1" class="form-label">Password</label>
                        <asp:TextBox ID="TextBox4" runat="server" type="password" CssClass="form-control bg-info bg-opacity-10 border border-primary"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please Fill All Fields S" ControlToValidate="TextBox4" ValidationGroup="fill2">*</asp:RequiredFieldValidator>

                        </div>
                    <div>
                    <label for="exampleInputPassword1" class="form-label">Confirm Password</label>
                    <asp:TextBox ID="TextBox5" runat="server" type="password" CssClass="form-control bg-info bg-opacity-10 border border-primary"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please Fill All Fields S" ControlToValidate="TextBox5" ValidationGroup="fill2">*</asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Rewrite Your Password"  ControlToCompare="TextBox5" ControlToValidate="TextBox4" ValidationGroup="fill2">*</asp:CompareValidator>
                     </div>
                    <br/>
                    <div class="d-grid">
                <asp:Button ID="Button1" runat="server" Text="Signup" validationgroup="fill2" class="btn btn-primary" type="submit"/>
<%--                        <button class="btn btn-primary" type="submit" validationgroup="fill2">Signup</button>--%>
                    </div>
                  <asp:ValidationSummary ID="ValidationSummary2" runat="server" ValidationGroup="fill2" />

               
            </div>
        </div>
               
    <br />
    <hr />
    <div class="vh-100 d-flex justify-content-center align-items-center">
            <div class="col-md-4 p-5 shadow-sm border rounded-5 border-primary">
                <h2 class="text-center mb-4 text-primary">Login Form</h2>
               
                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Email address</label>
                        <%--<input type="email" class="form-control bg-info bg-opacity-10 border border-primary" id="exampleInputEmail1" aria-describedby="emailHelp">--%>
                        <asp:TextBox ID="TextBox1" runat="server" type="email" CssClass="form-control bg-info bg-opacity-10 border border-primary"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Fill All Fields" ControlToValidate="TextBox1" ValidationGroup="fillreq">*</asp:RequiredFieldValidator>
                         <asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="Email Not Match"  ControlToCompare="TextBox1" ControlToValidate="TextBox3" ValidationGroup="fillreq">*</asp:CompareValidator>
                    
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputPassword1" class="form-label">Password</label>
                         <asp:TextBox ID="TextBox2" runat="server" type="password" CssClass="form-control bg-info bg-opacity-10 border border-primary"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Fill All Fields" ControlToValidate="TextBox2" ValidationGroup="fillreq">*</asp:RequiredFieldValidator>
                         <asp:CompareValidator ID="CompareValidator3" runat="server" ErrorMessage="Password Not Match"  ControlToCompare="TextBox2" ControlToValidate="TextBox4" ValidationGroup="fillreq">*</asp:CompareValidator>

                        <%--<input type="password" class="form-control bg-info bg-opacity-10 border border-primary" id="exampleInputPassword1">--%>
                    </div>
                    <p class="small"><a class="text-primary" href="forget-password.html">Forgot password?</a></p>
                    <div class="d-grid">
                     <asp:Button ID="Button2" runat="server" Text="Login" validationgroup="fillreq" class="btn btn-primary" type="submit"/>

                        <%--<button class="btn btn-primary" type="submit"  validationgroup="fillreq">Login</button>--%>
                    </div>
                
           
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="fillreq" />
            </div>
        </div>
﻿
               
   
</asp:Content>
