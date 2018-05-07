using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class cookies : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ProductGrid_SelectedIndexChanged(object sender, EventArgs e)
    {
        ShoppingCart curCart;
        if (Session["savedCart"] == null)
            curCart = new ShoppingCart();
        else
        {
            curCart = (ShoppingCart)Session["savedCart"];
        }
        bool addResult = curCart.addItem(ProductGrid.SelectedValue.ToString(), "Cookies");
        if (addResult == false)
            ProductPage.Text = "<p>You already selected that item!</p>";
        else
        {
            Session["savedCart"] = curCart;
            Response.Redirect("shopping_cart.aspx");
        }
    }
}
