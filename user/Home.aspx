<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs"
    Inherits="bank_app.user.Home" %>
    <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <!-- <script>
            let form=document.querySelector("#form1");

            form.onsubmit=(e)=>{
                e.preventDefault();
            }
        </script> -->
    </asp:Content>
    <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="first-container">
            <div class="money-card">
                <div class="head">
                    <p>SAVING ACCOUNT</p>
                </div>
                <div class="money-view">

                    <span>
                        <p><i class="fa-solid fa-indian-rupee-sign mx-2"></i>
                            <%--<asp:Label runat="server" ID="Amount" Text="1000" CssClass="num hide"></asp:Label>--%>
                                <p class="num hide" runat="server" id="Money">1000 </p>
                                <p class="star"><i class="fa-solid fa-circle fa-2xs"></i><i
                                        class="fa-solid fa-circle fa-2xs"></i><i
                                        class="fa-solid fa-circle fa-2xs"></i><i class="fa-solid fa-circle fa-2xs"></i>
                    </span></p>
                    <p><i class="fa-solid fa-eye mx-2 eye"></i></p>
                    </span>w
                    </span>
                    <p class="upi"><strong>UPI ID:</strong><span runat="server" id="Upi">9099086775@skybank</span></p>
                    <button>Add Money <i class="fa-solid fa-angle-right"></i></button>
                    <hr class="mx-2">
                </div>
                <div class="functions">
                    <div class="ltl_box">
                       <a href="PayTo.aspx" class="box-desgine"> <div class="box" >
                            <i class="fa-solid fa-money-bill-transfer"></i>
                        </div>
                        <span>Pay </span></a>
                    </div>
                    <div class="ltl_box">
                        <a href="#" class="box-desgine"><div class="box">
                            <i class="fa-solid fa-credit-card"></i>
                        </div>
                        <span>Card</span></a>
                    </div>
                    <div class="ltl_box">
                        <a href="#" class="box-desgine"><div class="box">
                            <i class="fa-solid fa-piggy-bank"></i>
                        </div>
                        <span>Investment</span></a>
                    </div>
                    <div class="ltl_box">
                        <a href="#" class="box-desgine"><div class="box">
                            <i class="fa-solid fa-rocket"></i>
                        </div>
                        <span>Boost</span></a>
                    </div>
                </div>
            </div>
            <div class="img-holder">
                <img src="../img/logo1.png" alt="" class="front">
            </div>
        </div>

        <div class="transaction">
            <div class="head">
                <h1>Recent Transactions</h1>
                <a href="#">See All<i class="fa-solid fa-angle-right mx-1"></i></a>
            </div>

            <div class="list">
                <div class="list-contain">
                    <div class="profile">
                        <div class="box">
                            <img src="../img/emp2.jpeg" alt="">
                        </div>
                        <div class="text">
                            <span class="name">Sagar Mandal</span>
                            <p>7Oct 2023 9.23pm</p>
                        </div>
                    </div>
                    <div class="money">
                        <p>+500</p>
                    </div>

                </div>
                <div class="list-contain">
                    <div class="profile">
                        <div class="box">
                            <img src="../img/emp2.jpeg" alt="">
                        </div>
                        <div class="text">
                            <span class="name">Sagar Mandal</span>
                            <p>7Oct 2023 9.23pm</p>
                        </div>
                    </div>
                    <div class="money">
                        <p>+500</p>
                    </div>

                </div>
                <div class="list-contain">
                    <div class="profile">
                        <div class="box">
                            <img src="../img/emp2.jpeg" alt="">
                        </div>
                        <div class="text">
                            <span class="name">Sagar Mandal</span>
                            <p>7Oct 2023 9.23pm</p>
                        </div>
                    </div>
                    <div class="money">
                        <p>+500</p>
                    </div>

                </div>
                <div class="list-contain">
                    <div class="profile">
                        <div class="box">
                            <img src="../img/emp2.jpeg" alt="">
                        </div>
                        <div class="text">
                            <span class="name">Sagar Mandal</span>
                            <p>7Oct 2023 9.23pm</p>
                        </div>
                    </div>
                    <div class="money">
                        <p>+500</p>
                    </div>

                </div>

            </div>
        </div>


       
    </asp:Content>