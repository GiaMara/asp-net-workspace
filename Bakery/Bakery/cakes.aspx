<%@ Page Language="C#" AutoEventWireup="true" CodeFile="cakes.aspx.cs" Inherits="cakes" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Central Valley Bakery</title>
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
    <link href="text.css" rel="stylesheet" type="text/css" />
</head>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
    <table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0" class="text">
        <tr>
            <td height="16" background="images/top01bg.gif">
                <img src="images/top01.gif" width="775" height="16" />
            </td>
        </tr>
        <tr>
            <td align="left" valign="top">
                <table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0" class="text">
                    <tr>
                        <td width="216" align="left" valign="top">
                            <table width="216" height="100%" border="0" cellpadding="0" cellspacing="0" class="text">
                                <tr>
                                    <td height="129" valign="top"><a href="index.htm">
                                        <img src="images/logo.gif" width="216" height="129" border="0" /></a></td>
                                </tr>
                                <tr>
                                    <td height="31" valign="top">
                                        <img src="images/but01_1.gif" width="216" height="31" /></td>
                                </tr>
                                <tr>
                                    <td height="31" valign="top"><a href="cookies.aspx">
                                        <img src="images/but02.gif" width="216" height="31" border="0" /></a></td>
                                </tr>
                                <tr>
                                    <td height="31" valign="top"><a href="pies.aspx">
                                        <img src="images/but03.gif" width="216" height="31" border="0" /></a></td>
                                </tr>
                                <tr>
                                    <td height="31" valign="top"><a href="breads.aspx">
                                        <img src="images/but04.gif" width="216" height="31" border="0" /></a></td>
                                </tr>
                                <tr>
                                    <td height="31" valign="top"><a href="shopping_cart.aspx">
                                        <img src="images/but05.gif" width="216" height="31" border="0" /></a></td>
                                </tr>
                                <tr>
                                    <td valign="bottom" background="images/sidebg4.gif">
                                        <table width="216" border="0" cellpadding="0" cellspacing="0" class="text">
                                            <tr valign="top">
                                                <td colspan="2">
                                                    <img src="images/featured_product.gif" width="216" height="38" /></td>
                                            </tr>
                                            <tr>
                                                <td width="75">
                                                    <img src="images/featured_pic.gif" width="75" height="162" /></td>
                                                <td width="141" valign="top" background="images/featured_bg.gif">
                                                    <table width="130" border="0" cellpadding="0" cellspacing="0" class="text">
                                                        <tr>
                                                            <td><font color="743F00">Carrot cake never goes out of style. Our rich and moist spice
                                                                cake, full of grated carrot and toasted nuts, has great flavor, especially when
                                                                covered with a cream cheese frosting. </font></td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td align="left" valign="top">
                            <table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0" class="text">
                                <tr>
                                    <td height="194" background="images/topbg02_1.jpg">
                                        <img src="images/thebest_1.jpg" width="559" height="194" />
                                    </td>
                                </tr>
                                <tr>
                                    <td height="37" valign="top" bgcolor="BE5900">
                                        <table width="559" border="0" cellspacing="0" cellpadding="0">
                                            <tr>
                                                <td width="356">
                                                    <img src="images/cakes.gif" width="559" height="37" />
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" valign="top" bgcolor="FFFDED">
                                        <table width="559" height="100%" border="0" cellpadding="0" cellspacing="0" class="text">
                                            <tr>
                                                <td align="center" valign="top" bgcolor="FFFDED">
                                                    <table width="530" border="0" cellpadding="0" cellspacing="0" class="text">
                                                        <tr>
                                                            <td>&nbsp; </td>
                                                        </tr>
                                                        <tr valign="top">
                                                            <td>
                                                                <form id="form1" runat="server">
                                                                <div>
                                                                    <p>
                                                                        <asp:Literal ID="ProductPage" runat="server" /></p>
                                                                        <asp:GridView ID="ProductGrid" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="productID" DataSourceID="BakeryDataSource" EnableModelValidation="True" Font-Size="Smaller" onselectedindexchanged="ProductGrid_SelectedIndexChanged">
                                                                            <Columns>
                                                                                <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                                                                                <asp:BoundField DataField="description" HeaderText="Description" SortExpression="description" />
                                                                                <asp:BoundField DataField="price" DataFormatString="{0:c}" HeaderText="Price" SortExpression="price" />
                                                                                <asp:CommandField ButtonType="Button" SelectImageUrl="~/images/ordernow.gif" ShowSelectButton="True" />
                                                                            </Columns>
                                                                            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                                                                            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                                                                            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                                                                            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                                                                            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                                                                    </asp:GridView>
                                                                    <asp:SqlDataSource ID="BakeryDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:BakeryConnectionString %>" SelectCommand="SELECT * FROM [Cakes]"></asp:SqlDataSource>
                                                                </div>
                                                                </form>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                    <br />
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td height="54" background="images/bottombg.gif">
                <table width="775" border="0" cellpadding="0" cellspacing="0" class="text">
                    <tr>
                        <td width="216">
                            <img src="images/bottom01.gif" width="216" height="54" />
                        </td>
                        <td align="center" valign="bottom">
                            <table width="500" border="0" cellpadding="5" cellspacing="0" class="text">
                                <tr>
                                    <td align="center"><font color="743F00">Copyright &copy; 2000-2010 Central Valley Bakery,
                                        Inc. All Rights Reserved.</font> </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</body>
</html>
