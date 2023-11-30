<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="bank_app.user.signup" %>

    <!DOCTYPE html>

    <html xmlns="http://www.w3.org/1999/xhtml">

    <head runat="server">
        <title>Sky Bank || Bank for the future </title>
        <link rel="shortcut icon" type="image/png" href="../img/logo1.png"/>
        <link rel="shortcut icon" type="image/png" href="img/logo1.png" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
            integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
            crossorigin="anonymous" />
        <link type="text/css" rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" />
        <link rel="stylesheet" href="userStyle.css"/>

        <style>
            .text-danger{
                color: red !important;
                font-size: 15px;
                font-weight: bold;
            }
        </style>
    </head>

    <body>
        <form id="form1" runat="server">
            <nav>
                <div class="nav">


                    <div class="logo">
                        <img src="../img/logo1.png" />
                    </div>
                    <h1>Registration Form</h1>
                </div>

            </nav>

            <div class="body">
                <div class="form">
                    
                    <div class="right">
                        <h1>Self Details</h1>
                        <asp:Label runat="server" ID="Msg" Text="*This is Error Msg" CssClass="text-danger" Visible="false"></asp:Label>
                        <div class="mb-2">
                            <label for="">Full Name<span class="text-danger">*</span></label>
                            <asp:TextBox runat="server" ID="Name" Placeholder="Enter your name" CssClass="form-control">
                            </asp:TextBox>

                        </div>
                        <div class="mb-2">
                            <label for="">Date Of Birth<span class="text-danger">*</span></label>
                            <asp:TextBox runat="server" ID="DOB"  CssClass="form-control" TextMode="Date">
                            </asp:TextBox>
                        </div>
                        <div class="mb-2">
                            <label for="">Address<span class="text-danger">*</span></label>
                            <asp:TextBox runat="server" ID="Add" Placeholder="Address" CssClass="form-control">
                            </asp:TextBox>
                        </div>
                        <div class="mb-2">
                            <label for="">Profile Image<span class="text-danger">*</span></label>
                             <asp:FileUpload runat="server" ID="Img" CssClass="form-control" />
                        </div>
                        <div class="mb-2">
                            <label for="">Contact<span class="text-danger">*</span></label>
                            <asp:TextBox runat="server" ID="Contact" Placeholder="Contact" CssClass="form-control">
                            </asp:TextBox>
                        </div>

                        <asp:Button  runat="server" CssClass="btn btn-success button" ID="submit" Text="Submit" OnClick="submit_Click"/>
                        
                    </div>
                    <div class="left">
                        <h1>Login Details</h1>
                        <div class="mb-2">
                            <label for="">Email<span class="text-danger">*</span></label>
                            <asp:TextBox runat="server" ID="Email" Placeholder="Enter your email" CssClass="form-control">
                            </asp:TextBox>

                        </div>
                        <div class="mb-2">
                            <label for="">Password<span class="text-danger">*</span></label>
                            <asp:TextBox runat="server" ID="Pass" Placeholder="Password" CssClass="form-control" TextMode="Password">
                            </asp:TextBox>

                        </div>
                        <div class="mb-2">
                            <label for="">Re-Enter Password<span class="text-danger">*</span></label>
                            <asp:TextBox runat="server" ID="RePass" Placeholder="Re Enter Password" CssClass="form-control" >
                            </asp:TextBox>

                        </div>
                    </div>
                </div>


                
            </div>
        </form>



        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
            crossorigin="anonymous"></script>
    </body>

    </html>