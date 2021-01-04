<%@ Page Title="" Language="C#" MasterPageFile="~/HomePage.Master" AutoEventWireup="true" CodeBehind="Booking.aspx.cs" Inherits="WebApplication1.Booking" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<br />
<br />
    <div class="container">
        <div class="row m-1">
            <div class="col-md-8 mx-auto">
                <div class="card ">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="70px" src="Images/Booking.png" />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Book your room...</h3>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col mx-auto">
                                <hr />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>First Name</label>
                                    <asp:TextBox CssClass="form-control" runat="server" ID="txtbox_FirstName" placeholder="First Name"></asp:TextBox>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                      ErrorMessage="Please enter First Name..."
                                        ControlToValidate="txtbox_FirstName"
                                        ValidationGroup="Up"
                                        SetFocusOnError="true"
                                        ForeColor="Red"
                                        Font-Name="Segoe ui"
                                        Font-Size="13px">
                                    </asp:RequiredFieldValidator>
                                    </div>
                            </div>
                            <div class="col-md-6">
                                   <div class="form-group">
                                       <label>Last Name</label>
                                       <asp:TextBox CssClass="form-control" runat="server" ID="txtbox_LastName" placeholder="Last Name" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                      ErrorMessage="Please enter Last Name..."
                                        ControlToValidate="txtbox_LastName"
                                        ValidationGroup="Up"
                                        SetFocusOnError="true"
                                        ForeColor="Red"
                                        Font-Name="Segoe ui"
                                        Font-Size="13px">
                                    </asp:RequiredFieldValidator> 
                                    
                                </div>
                            </div>
                        <div class="row">
                              <div class="col-md-6">
                                   <div class="form-group">
                                       <label>Email Id</label>
                                       <asp:TextBox CssClass="form-control" runat="server" ID="txtbox_Email" placeholder="Email" TextMode="Password"></asp:TextBox>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                      ErrorMessage="Please enter Email id..."
                                        ControlToValidate="txtbox_Email"
                                        ValidationGroup="Up"
                                        SetFocusOnError="true"
                                        ForeColor="Red"
                                        Font-Name="Segoe ui"
                                        Font-Size="13px">
                                    </asp:RequiredFieldValidator> 
                                    </div>
                                   </div>
                            <div class="col-md-6">
                                   <div class="form-group">
                                       <label>Email Id</label>
                                       <asp:TextBox CssClass="form-control" runat="server" ID="txtbox_Contact" placeholder="Email" TextMode="Password"></asp:TextBox>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                      ErrorMessage="Please enter Contact Number..."
                                        ControlToValidate="txtbox_Contact"
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
                              <div class="col-md-6">
                                   <div class="form-group">
                                       <label>Country</label>
                                       <asp:TextBox CssClass="form-control" runat="server" ID="txtbox_Country" placeholder="Country"></asp:TextBox>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                      ErrorMessage="Please enter Country..."
                                        ControlToValidate="txtbox_Country"
                                        ValidationGroup="Up"
                                        SetFocusOnError="true"
                                        ForeColor="Red"
                                        Font-Name="Segoe ui"
                                        Font-Size="13px">
                                    </asp:RequiredFieldValidator> 
                                    </div>
                                   </div>
                            <div class="col-md-6">
                                   <div class="form-group">
                                       <label>Province</label>
                                       <asp:TextBox CssClass="form-control" runat="server" ID="txtbox_Province" placeholder="Provience"></asp:TextBox>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                      ErrorMessage="Please enter Province..."
                                        ControlToValidate="txtbox_Province"
                                        ValidationGroup="Up"
                                        SetFocusOnError="true"
                                        ForeColor="Red"
                                        Font-Name="Segoe ui"
                                        Font-Size="13px">
                                    </asp:RequiredFieldValidator> 
                                    </div>
                                   </div>
                                </div>
                            </div>
                        <div class="row">
                            <div class="col">
                                <div class="form-group m-2">
                                    <asp:Button class="btn btn-success btn-block" runat="server" OnClick="btn_ConfirmBooking_Click" Text="Confirm bookig" />
                                </div>
                            </div>
                        </div>                          
                       </div>                      
                    </div>
                </div>
            </div>
        </div>

</asp:Content>
