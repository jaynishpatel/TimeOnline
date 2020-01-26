<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditProduct.aspx.cs" Inherits="ImpliedProject1.EditProduct" %>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <title></title>
<style>
   * {box-sizing: border-box}
body {font-family: "Lato", sans-serif;
      background-image: url(backg.jpg)
}
/* Style the tab */
.tab {
  float: left;
  border: 1px solid #ccc;
  background-color: #f1f1f1;
  width: 200px; 
  height: 100px;
}
/* Style the buttons inside the tab*/
.tab button {
  display: block;
  background-color: inherit;
  color: black;
  padding: 13px 9px;
  width: 200px;
  border: none;
  outline: none;
  text-align: left;
  cursor: pointer;
  transition: 0.3s;
  font-size: 17px;
}
/* Change background color of buttons on hover */
.tab button:hover {
  background-color: #ddd;
}
/* Create an active/current "tab button" class */
.tab button.active {
  background-color: #ccc;
}

/* Style the tab content */
.tabcontent {
  float: left;
  padding: 0px 12px;
  border: 1px solid #ccc;
  width: 80%;
  border-left: none;
  height: 700px;
}
    .auto-style1 {
        width: 100%;
        float: left;
    }
    .auto-style2 {
        width: 143px;
    }
    .auto-style3 {
        width: 168px;
    }
    .auto-style4 {
        width: 143px;
        height: 26px;
    }
    .auto-style5 {
        width: 168px;
        height: 26px;
    }
    .auto-style6 {
        height: 26px;
    }
    </style>
</head>
   
    <form id="form1" runat="server">
   
    <div class="tab">
        
  <a href ="Homepage.aspx"<button class="tablinks" onclick="openCity(event, 'Home')" id="defaultOpen">Home</button></a></br></br>
  <a href ="AddBrand.aspx"<button class="tablinks" onclick="openCity(event, 'Brands')"id="brands">Brands</button></a>
  <button class="tablinks" onclick="openCity(event, 'Products')" id="Products">Products</button>
</div>

<div id="Home" class="tabcontent">
  <center><h2>&nbsp;</h2></center>
   <center><h2>TIME ONLINE</h2></center>
    
   <h4>Edit Product</h4>
    <pre>                                                                                                                    <a href="LoginPage.aspx">Log Out</a></pre>
    <table align="center" class="auto-style1">
        <tr>
            <td class="auto-style2">Brand</td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>Product Name</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Product Id</td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">Sales Price</td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style6">Available Quantity</td>
            <td class="auto-style6">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="42px" DataSourceID="SqlDataSource1" DataTextField="AvailableQuantity" DataValueField="AvailableQuantity">
                </asp:DropDownList>
            </td>
        </tr>
    </table>
    </br>
    </br>
    </br>
    </br>
    </br>
    </br>
    <center><asp:Button ID="UpdateBrand" Text="Update" runat="server" cssclass="btn-dark" ></asp:Button>&nbsp;&nbsp;

        <asp:Button ID="Button1" runat="server" Text="Cancel" OnClick="Button1_Click" cssclass="btn-dark" />

        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ProductId" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                <asp:BoundField DataField="ProductId" HeaderText="ProductId" ReadOnly="True" SortExpression="ProductId" />
                <asp:BoundField DataField="AvailableQuantity" HeaderText="AvailableQuantity" SortExpression="AvailableQuantity" />
                <asp:BoundField DataField="SalesPrice" HeaderText="SalesPrice" SortExpression="SalesPrice" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
        </asp:GridView>
   
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AppliedProjectConnectionString %>" DeleteCommand="DELETE FROM [Product] WHERE [ProductId] = @ProductId" InsertCommand="INSERT INTO [Product] ([ProductName], [ProductId], [AvailableQuantity], [SalesPrice], [NumberOfProduct]) VALUES (@ProductName, @ProductId, @AvailableQuantity, @SalesPrice, @NumberOfProduct)" SelectCommand="SELECT [ProductName], [ProductId], [AvailableQuantity], [SalesPrice], [NumberOfProduct] FROM [Product]" UpdateCommand="UPDATE [Product] SET [ProductName] = @ProductName, [AvailableQuantity] = @AvailableQuantity, [SalesPrice] = @SalesPrice, [NumberOfProduct] = @NumberOfProduct WHERE [ProductId] = @ProductId">
            <DeleteParameters>
                <asp:Parameter Name="ProductId" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ProductName" Type="String" />
                <asp:Parameter Name="ProductId" Type="String" />
                <asp:Parameter Name="AvailableQuantity" Type="Int32" />
                <asp:Parameter Name="SalesPrice" Type="Int32" />
                <asp:Parameter Name="NumberOfProduct" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ProductName" Type="String" />
                <asp:Parameter Name="AvailableQuantity" Type="Int32" />
                <asp:Parameter Name="SalesPrice" Type="Int32" />
                <asp:Parameter Name="NumberOfProduct" Type="String" />
                <asp:Parameter Name="ProductId" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
   
</form>

  
</html>

