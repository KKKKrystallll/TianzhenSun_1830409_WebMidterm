<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="webHondi.aspx.cs" Inherits="TianzhenSun_1830409_WebMidterm.webHondi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            color: #1B4F72;
            font-weight: bold;
        }
        .auto-style2 {
            width: 417px;
        }
        .auto-style3 {
            width: 300px;
        }
        .auto-style6 {
            width: 273px;
          
        }
        .auto-style7 {
            height: 55px;
            width: 273px;
        }
        .auto-style8 {
            margin-top: 0px;
             border-radius:30px;
             font-weight: bold;
             margin-left:30px;
        }
        .auto-style9 {
            width: 733px;
            height: 581px;
        }
        .auto-style10 {
            width: 97px;
        }
        .auto-style11 {
            width: 400px;
        }

        .auto-style12 {
            height: 116px;
        }
        .stylePanel {
            border-radius:30px;
            margin-left:20px;
            font-weight: bold;
        }
        .tecboc {
           border-radius:5px;
           border-style: dashed;
        }
        .auto-style14 {
            text-align: center;
        }
        .auto-style15 {
            margin-top: 50px;
            border-radius:30px;
            font-weight: bold;
            margin-left:30px;
        }
        .button {
            margin-bottom:10px;
            margin-left: 150px;
        }
        .blank{
            height:10px;
        }
       
    </style>
</head>
<body style="        background-color: lavenderblush;
">
    <form id="form1" runat="server" class="auto-style9">
        <div>

            <h1 class="auto-style1">Hondi Build & Price</h1>

        </div>
        <hr class="auto-style2" />
        
        <table class="auto-style11">
            <tr style="vertical-align:top;">
                <td class="auto-style12">
        
        <asp:Panel ID="panCar" runat="server" CssClass="stylePanel"  BackColor="#D8BFD8" GroupingText="Car Informations" Height="100%" Width="400px" >
             <table class="auto-style3">
                  <tr class="blank"></tr>
                <tr>
                    <td class="auto-style10">
                        <asp:Label ID="lblCity" runat="server" AccessKey="c" AssociatedControlID="txtCity" Text="Your City :"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtCity" runat="server" CssClass="tecboc" Width="100px"></asp:TextBox>
                    </td>
                </tr>
                 <tr class="blank"></tr>
                 <tr>
                    <td class="auto-style10">
                        <asp:Label ID="lblZip" runat="server" AccessKey="t" AssociatedControlID="txtZip" Text="Zip Code :"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtZip" runat="server" CssClass="tecboc" Width="100px"></asp:TextBox>
                    </td>
                </tr>
                  <tr class="blank"></tr>
                 <tr>
                    <td class="auto-style10">
                        <asp:Label ID="lblModel" runat="server" Text="Car Model:"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:DropDownList ID="cboModel" runat="server" CssClass="tecboc" AutoPostBack="True" OnSelectedIndexChanged="cboModel_SelectedIndexChanged" Width="120px">
                            <asp:ListItem>Select a Model</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                  <tr class="blank"></tr>
                 <tr>
                    <td class="auto-style10">
                        <asp:Label ID="lblColour" runat="server" Text="Interior Colour:"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:ListBox ID="lstCarColour" runat="server" CssClass="tecboc" AutoPostBack="True" Width="100px"></asp:ListBox>
                    </td>
                </tr>
                  <tr class="blank"></tr>
                 <tr>
                    <td class="auto-style10">
                        <asp:Label ID="lblAccessories" runat="server" Text="Accessories:"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        
                        <asp:CheckBoxList ID="chklstAccessories" runat="server" AutoPostBack="True">
                        </asp:CheckBoxList>
                        
                    </td>
                </tr>
                  <tr class="blank"></tr>
                 <tr>
                    <td class="auto-style10">
                        <asp:Label ID="lblWarranty" runat="server" Text="Warranty:"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:RadioButtonList ID="radlstWarranty" runat="server" AutoPostBack="True">
                        </asp:RadioButtonList>
                    </td>
                </tr>
                  <tr class="blank"></tr>
                 <tr>
                    <td class="auto-style10">
                        <asp:Label ID="lblContact" runat="server" Text="Dealer contact you by phone?"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:CheckBox ID="chkContact" runat="server" AutoPostBack="True" OnCheckedChanged="chkContact_CheckedChanged" />
                    </td>
                </tr>
                  <tr class="blank"></tr>
                 <tr>
                    <td class="auto-style10">
                        <asp:Label ID="lblNumber" runat="server"  Text="Phone Number:"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtNumber" runat="server" TextMode="Phone" CssClass="tecboc" Width="100px"></asp:TextBox>
                    </td>
                </tr>
            </table>
            
          </asp:Panel>
                </td>
                <td class="auto-style12">
            <asp:Panel ID="panPricing" runat="server"  GroupingText="Price Resume" Height="256px" Width="268px" BackColor="#D8BFD8" CssClass="auto-style8">
                <asp:Literal ID="litPricing" runat="server"></asp:Literal>
                <asp:Button ID="btnConclude" runat="server" CssClass="button" Text="Conclude" OnClick="btnConclude_Click" />
            </asp:Panel>
                    <br />
                    <asp:Panel ID="panOrder" runat="server" CssClass="auto-style15" GroupingText="Final Informations" BackColor="#D8BFD8">
                        <asp:Literal ID="litOrder" runat="server"></asp:Literal>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <br />
    </form>
</body>
</html>
