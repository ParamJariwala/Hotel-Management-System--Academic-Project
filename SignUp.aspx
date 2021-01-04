<%@ Page Title="" Language="C#" MasterPageFile="~/HomePage.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="WebApplication1.SignUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <div class="container">
        <div class="row m-1">
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
                            <div class="col">
                                <center>
                                    <h3>Sign Up</h3>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col mx-auto">
                                <hr />
                            </div>
                        </div>

                        <%-- <div class="row">
                            <div class="col-md-6">
                                <div class="form-group m-2">
                                <asp:TextBox CssClass="form-control" runat="server" Id="txt_FirstName" placeholder="First Name"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group m-2">
                                <asp:TextBox CssClass="form-control" runat="server" Id="txt_LastName" placeholder="Last Name" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>
                        </div>--%>

                        <%-- <div class="row">
                            <div class="col-md-6">
                                <div class="form-group m-2">
                                <asp:TextBox CssClass="form-control" runat="server" Id="txt_Emial" placeholder="Emial Id" TextMode="Password"></asp:TextBox>                                    </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group m-2">
                                  <asp:TextBox CssClass="form-control" runat="server" Id="txt_ContactNumber" placeholder="Contact Number" TextMode="Password"></asp:TextBox> 
                                </div>
                            </div>
                        </div>--%>

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
                            </div>
                        </div>
                         <div class="row">
                              <div class="col">
                                   <div class="form-group">
                                       <asp:TextBox CssClass="form-control" runat="server" ID="txtbox_Password" placeholder="Password" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                      ErrorMessage="Please enter password..."
                                        ControlToValidate="txtbox_Password"
                                        ValidationGroup="Up"
                                        SetFocusOnError="true"
                                        ForeColor="Red"
                                        Font-Name="Segoe ui"
                                        Font-Size="13px">
                                    </asp:RequiredFieldValidator> 
                                    
                                </div>
                            </div>
                        <div class="row">
                              <div class="col">
                                   <div class="form-group">
                                       <asp:TextBox CssClass="form-control" runat="server" ID="txtbox_ConfirmPassword" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                      ErrorMessage="Please enter confirm password..."
                                        ControlToValidate="txtbox_ConfirmPassword"
                                        ValidationGroup="Up"
                                        SetFocusOnError="true"
                                        ForeColor="Red"
                                        Font-Name="Segoe ui"
                                        Font-Size="13px">
                                    </asp:RequiredFieldValidator> 
                                       <br />
                                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                        ControlToCompare="txtbox_Password"
                                        ControlToValidate="txtbox_ConfirmPassword"
                                        ErrorMessage="Password does not match..."
                                        ValidationGroup="Up"
                                        SetFocusOnError="true"
                                        ForeColor="Red"
                                        Font-Name="Segoe ui"
                                        Font-Size="13px">
                                    </asp:CompareValidator>
                                   </div>
                                   </div>
                                </div>
                            </div>
                        <div class="row">
                            <div class="col">
                                <div class="form-group m-2">
                                    <asp:Button class="btn btn-success btn-block" runat="server" Onclick="btn_SingUp" Text="Sign Up" />
                                </div>
                            </div>
                        </div>                          
                       </div>                      
                    </div>
                </div>
            </div>
        </div>    
</asp:Content>
