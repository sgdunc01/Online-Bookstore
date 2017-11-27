<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Purchase.aspx.cs" Inherits="Assignment1.Purchase" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Book Purchase Website</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            margin-right: 0px;
        }
        .auto-style2 {
            width: 273px;
        }
        .auto-style3 {
            width: 206px;
        }
        .auto-style4 {
            width: 98px;
        }
        .auto-style5 {
            width: 273px;
            height: 33px;
        }
        .auto-style6 {
            width: 206px;
            height: 33px;
        }
        .auto-style7 {
            width: 98px;
            height: 33px;
        }
        .auto-style8 {
            height: 33px;
        }
        .auto-style11 {
            width: 134px;
            height: 33px;
        }
        .auto-style12 {
            width: 134px;
        }
        .auto-style13 {
            width: 331px;
            height: 33px;
        }
        .auto-style14 {
            width: 331px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Book Purchase Website</div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style5">
                    <asp:DropDownList ID="BookDDL" runat="server">
                    </asp:DropDownList>
                </td>
                <td class="auto-style6"></td>
                <td class="auto-style11">
                    Add Quantity</td>
                <td class="auto-style7">
                    <asp:TextBox ID="QuantityText" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="PurchaseBtn" runat="server" Text="Purchase" OnClick="PurchaseBtn_Click" />
                </td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="6">
                    <asp:Label ID="BookLbl" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="6">
                    <asp:RequiredFieldValidator ID="QuantityRequired" runat="server" ControlToValidate="QuantityText" ErrorMessage="Quantity is required, as a number in the range of 1 to 10." Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="6">
                    <asp:RangeValidator ID="QuantityRangeValidator" runat="server" ControlToValidate="QuantityText" ErrorMessage="The quantity should be a number in the range of 1 to 10." Font-Bold="True" ForeColor="Red" MaximumValue="10" MinimumValue="1" Type="Integer"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
