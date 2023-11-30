<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs"
    Inherits="bank_app.user.Profile" %>
    <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <style>
            .border {
                padding: 10px 100px;
                border: 1px solid black !important;

            }

            .head {
                display: flex;
                justify-content: space-around;
                align-items: center;
            }

            .head .btn {
                background-color: red !important;
                color: white !important;
                border-radius: 20px !important;
                padding: 7px 20px !important;
                font-size: 12px !important;
            }
            .modal-content{
                background:linear-gradient(to left , purple,darkviolet);
            }
            .modal-body h1{
                font-size: 20px;
                font-weight: bold;
                color: white;
            }
            #mpin{
                background-color: transparent;
            }
            .msg{
                color:red;
            }
        </style>
    </asp:Content>
    <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div class="first-container">
            <div class="money-card">
                <div class="head">
                    <p>SAVING ACCOUNT</p>
                    <p class="btn" data-bs-toggle="modal" data-bs-target="#exampleModal">MPIN</p>
                </div>
                <div class="acc-details">

                    <div class="left">
                        <p>Account Number</p>
                        <p>IFSC Code</p>
                        <p>Account Type</p>
                        <p>KYC Status</p>
                    </div>
                    <div class="right">
                        <p runat="server" id="AccNo">12345678901234</p>
                        <p>FDRL0007777</p>
                        <p>Saving Type</p>
                        <p class="text-success">Verified</p>
                    </div>

                </div>
            </div>
            <div class="profile-img">
                <img runat="server" id="Img" src="../img/emp1.jpg" alt="" class="">
            </div>
        </div>

        <div class="personal-details">
            <h1>Personal Details</h1>
            <div>
                <div class="mb3 border">
                    <label for="">Name:</label>
                    <asp:Label runat="server" ID="Name" Text="Sagar Mandal"></asp:Label>
                </div>
                <div class="mb3 border">
                    <label for="">DOB:</label>
                    <asp:Label runat="server" ID="DOB" Text="03-06-2004"></asp:Label>
                </div>
                <div class="mb3 border">
                    <label for="">Email:</label>
                    <asp:Label runat="server" ID="Email" Text="sagar@gmail.com"></asp:Label>
                </div>
                <div class="mb3 border">
                    <label for="">Mobile Nmber:</label>
                    <asp:Label runat="server" ID="Contact" Text="S9099086775"></asp:Label>
                </div>
                <div class="mb3 border">
                    <label for="">Address:</label>
                    <asp:Label runat="server" ID="Address" Text="Kakudikuda,jajpur,odisha"></asp:Label>
                </div>
            </div>

        </div>


        <!-- Button trigger modal -->
        <!-- <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
            Launch demo modal
        </button> -->

        <!-- Modal -->
        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title text-light" id="exampleModalLabel">Generate MPIN</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body" runat="server" id="Modal">
                       <h1>Generate Your 4digit Mpin</h1>
                        <div class="mpin-form">
                            <asp:Label runat="server" ID="Msg" Visible="false" CssClass="msg"></asp:Label>
                            <asp:TextBox runat="server" ID="mpin" CssClass="form-control" Placeholder="Enter Your Mpin.."></asp:TextBox>
                            
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        

                        
                        <asp:Button  runat="server" ID="Submit" CssClass="btn btn-primary" Text="Submit" OnClick="Submit_Click"/>
                    </div>
                </div>
            </div>
        </div>
    </asp:Content>