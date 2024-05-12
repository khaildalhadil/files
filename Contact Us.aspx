<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="Contact Us.aspx.cs" Inherits="braka.countactus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        div {
            display: flex;
            align-content: center;
            justify-content: center
        }
    </style>

    <div>
    <form action="" method="get">

        <pre>
        <label for="address" >Enter Your Address</label>
        <input type="text" name="address" id="address" />

        <label for="phone" >Enter Your Phone Number</label>
        <input type="number" name="number" id="phone" />

        <label for="email" >Enter Your Email</label>
        <input type="email" name="email" id="email"  />

        <label for="textarea" >Enter your massage</label>
        <textarea id="textarea" rows="4" cols="21.4" >

        </textarea>

        <button onclick="checkIf()" style="width: 370px; text-align: center" type="submit" >submit</button>
        </pre>
    </form>
   </div>
    <script>
        const address = document.getElementById('address')
        const phone = document.getElementById('phone')
        const email = document.getElementById('email')
        const textarea = document.getElementById('textarea')

        function checkIf() {
            if (address.value === '') {
                alert('you should write address!')
                return false;
            }

            if (phone.value.length < 7) {
                alert('you should write more then 8 number or equl')
                return false;
            }

            let checkEMail = (/^[^\s@]+@[^\s@]+\.[^\s@]+$/)
            if (!checkEMail.test(email.value)) {
                alert('Email is required');
                return false;
            }

            if (textarea.value.length < 15) {
                alert('Message shuld be more then 15 cr')
                return false;
            }

            alert('Done thinks you ')
        }

        
    </script>
</asp:Content>