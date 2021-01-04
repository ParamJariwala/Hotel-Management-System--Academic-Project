<%@ Page Title="" Language="C#" MasterPageFile="~/HomePage.Master" AutoEventWireup="true" CodeBehind="RoomsRate.aspx.cs" Inherits="WebApplication1.RoomsRate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<br />
<br />
    <div class="container">
        <div class="row m-1">
            <div class="col-md-12 mx-auto">
                <div class="card ">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="70px" src="Images/Rooms.png" /><h5>Rooms & Rates</h5>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col mx-auto">
                                <hr />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-3">
                                <div class="form-group m-2">
                                    <asp:Image ID="Image1" runat="server" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group m-2">
                                    <asp:Label ID="lbl_RoomDetails" runat="server" Text="Label"></asp:Label>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group m-2">
                                    <asp:Label ID="lbl_Rate" runat="server" Text="Label"></asp:Label>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group m-2">
                                   <asp:Button class="btn btn-success btn-block" runat="server" Text="Book" />
                                </div>
                            </div>
                        </div>     
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>


