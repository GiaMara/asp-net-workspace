using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Collections;
using System.Data.SqlClient;

/// <summary>
/// Generic shopping cart class
/// </summary>
public class ShoppingCart
{
    private SqlConnection dbConnection = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename=C:\Users\Gia\Desktop\Bakery\App_Data\Bakery.mdf;Integrated Security = True");
    private ArrayList productID = new ArrayList();
    private ArrayList productQuantity = new ArrayList();
    private ArrayList productTable = new ArrayList();
    
    public bool addItem(string prodID, string table)
    {
        foreach (string item in productID)
        {
            if (item == prodID)
                return false;
        }
        productID.Add(prodID);
        productQuantity.Add(1);
        productTable.Add(table);
        return true;
    }

    public string showCart()
    {
        
        string retValue = "<table width='100%' cellspacing='2' cellpadding='3' rules='all' border='1' id='ProductGrid' style='background-color:#DEBA84; border-color:#DEBA84; border-width:1px; border-style:None; font-size:Smaller;'>";
        retValue += "<tr style='color:White; background-color:#A55129; font-weight:bold;'><th align='center'>Product</th><th align='center'>Quantity</th><th align='center'>Price Each</th></tr>";
        double total = 0;
        for (int i = 0; i < productID.Count; ++i)
        {
            string sqlString = "SELECT * FROM " + productTable[i] + " WHERE productID='" + productID[i] + "'";
            SqlCommand prodCommand = new SqlCommand(sqlString, dbConnection);
            dbConnection.Open();
            SqlDataReader prodRecords = prodCommand.ExecuteReader();
            
            if (prodRecords.Read())
            {
                retValue += "<tr style='color:#8C4510; background-color:#FFF7E7;'>" + "<td>" + prodRecords["name"] + "</td>" + "<td align='center'>" + productQuantity[i] + "</td>" + "<td align='center'>" + String.Format("{0:C}", prodRecords["price"]) + "</td></tr>";
                double price = Convert.ToDouble(prodRecords["price"]);
                int quantity = Convert.ToInt16(productQuantity[i]);
                total += price * quantity;
            }
            prodRecords.Close();
            dbConnection.Close();
        }
        retValue += "<td align='center' colspan='2'><strong>Your shopping cart contains " + productQuantity.Count + " product(s).</strong></td>";
        retValue += "<td align='center'><strong>Total: " + String.Format("{0:C}", total) + "</strong></td></tr>";
        retValue += "<asp:Button runat='server' Text='Button' /></table>";
        return retValue;

    }
    public ShoppingCart()
    {
        //
        // TODO: Add constructor logic here
        //
    }
}