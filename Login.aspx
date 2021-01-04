<%@ Page Title="" Language="C#" MasterPageFile="~/HomePage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication1.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <div class="container">
        <div class="row">
            <div class="col-md-4 mx-auto">
                <div class="card ">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="70px" src="Images/Login.png" />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col ">
                                <center>
                                    <h3>Login</h3>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" runat="server" ID="txtbox_UserId" placeholder="User Id"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                      ErrorMessage="Please enter username..."
                                        ControlToValidate="txtbox_UserId"
                                        ValidationGroup="Up"
                                        SetFocusOnError="true"
                                        ForeColor="Red"
                                        Font-Name="Segoe ui"
                                        Font-Size="13px">
                                    </asp:RequiredFieldValidator>
                                </div>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" runat="server" ID="txtbox_Password" placeholder="Password" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                                        ErrorMessage="Please enter Password..."
                                        ControlToValidate="txtbox_Password"
                                        ValidationGroup="Up"
                                        SetFocusOnError="true"
                                        ForeColor="Red"
                                        Font-Name="Segoe ui"
                                        Font-Size="13px">
                                    </asp:RequiredFieldValidator>
                                </div>
                                <div class="form-group m-2">
                                    <asp:Button class="btn btn-success btn-block" runat="server" Text="Login" Onclick="btn_Login"/>
                                </div>
                                <div class="form-group m-2">
                                    <a href="SignUp.aspx">
                                        <input id="Button1" class="btn btn-info btn-block" type="button" value="Sign Up" />
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
