<%@ Page Title="" Language="C#" MasterPageFile="~/HomePage.Master" AutoEventWireup="true" CodeBehind="RoomAvailability.aspx.cs" Inherits="WebApplication1.RoomAvailability" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />

    <div class="container">
        <div class="row m-1">
            <div class="col-md-6 mx-auto">
                <div class="card ">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="70px" src="Images/Search.png" /><h5>Find your room here....</h5>
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
                                <label>Check In</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" runat="server" ID="txt_CheckInDate"></asp:TextBox>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                      ErrorMessage="Please select Check In date..."
                                        ControlToValidate="txt_CheckInDate"
                                        ValidationGroup="Up"
                                        SetFocusOnError="true"
                                        ForeColor="Red"
                                        Font-Name="Segoe ui"
                                        Font-Size="13px">
                                    </asp:RequiredFieldValidator>
                                    </div>
                            </div>
                            <div class="col-md-6">
                                <label>Check Out</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" runat="server" ID="txt_CheckOutDate"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                      ErrorMessage="Please select Check Out date..."
                                        ControlToValidate="txt_CheckOutDate"
                                        ValidationGroup="Up"
                                        SetFocusOnError="true"
                                        ForeColor="Red"
                                        Font-Name="Segoe ui"
                                        Font-Size="13px">
                                    </asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                        <div class="row m-3">
                            <div class="col-md-4">
                                <label>Adults</label>
                                <div>
                                    <asp:DropDownList ID="ddl_Adult" runat="server">
                                        <asp:ListItem Value="">Please Select</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                      ErrorMessage="Please select number of Adults...."
                                        ControlToValidate="ddl_Adult"
                                        ValidationGroup="Up"
                                        SetFocusOnError="true"
                                        ForeColor="Red"
                                        Font-Name="Segoe ui"
                                        Font-Size="13px">
                                    </asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Children</label>
                                <div>
                                    <asp:DropDownList ID="ddl_Children" runat="server">
                                        <asp:ListItem Value="">Please Select</asp:ListItem>
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                      ErrorMessage="Please select number of Children...."
                                        ControlToValidate="ddl_Children"
                                        ValidationGroup="Up"
                                        SetFocusOnError="true"
                                        ForeColor="Red"
                                        Font-Name="Segoe ui"
                                        Font-Size="13px">
                                    </asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Rooms</label>
                               <div>
                                    <asp:DropDownList ID="ddl_Room" runat="server">
                                        <asp:ListItem Value="">Please Select</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                    </asp:DropDownList>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                      ErrorMessage="Please select number of Room...."
                                        ControlToValidate="ddl_Room"
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
                            <div class="col m-2">                               
                                <div class="form-group">
                                    <asp:Button class="btn btn-success btn-block" Onclick='btn_Search_Click' runat="server" Text="Search" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
