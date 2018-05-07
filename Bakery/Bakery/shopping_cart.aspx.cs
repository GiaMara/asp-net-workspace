using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class shopping_cart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ShoppingCart curCart;
        if (Session["savedCart"] != null)
        {
            curCart = (ShoppingCart)Session["savedCart"];
            string retString = curCart.showCart();
            CartBody.Text = retString;
        }
        else
        {
            CartBody.Text = "<p>Your shopping cart is empty.</p>";
        }
    }
}
