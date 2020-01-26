<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Experiment.aspx.cs" Inherits="ImpliedProject1.Experiment" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<style>

    * {box-sizing: border-box}
body {font-family: "Lato", sans-serif;}

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
        margin-top: 38px;
    }
</style>
</head>
   
    <div class="tab">
        
  <button class="tablinks" onclick="openCity(event, 'Home')" id="defaultOpen">Home</button>
  <button class="tablinks" onclick="openCity(event, 'Brands')" id="brands">Brands</button>
  <button class="tablinks" onclick="openCity(event, 'Products')" id="Product">Products</button>
</div>

<div id="Home" class="tabcontent">
  <center><h2>TIME ONLINE</h2></center>
  
    <pre>
    
                                                                                                   <button type="button">Add Brand</button>  <button type="button">Add Product</button></pre>
    <br><br>
    <center>
        
        <h3>&nbsp;</h3>
     <form id="home" runat="server">
        <p>Brand Details</p>
       
            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" CssClass="auto-style1" DataSourceID="SqlDataSource1" AutoGenerateColumns="False">

             
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Brand" HeaderText="Brand" SortExpression="Brand" />
                    <asp:BoundField DataField="NumberOfProduct" HeaderText="NumberOfProduct" SortExpression="NumberOfProduct" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView></br></br>
        <P>Product Details</p>
        <asp:GridView ID="GridView2" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" CssClass="auto-style1" DataSourceID="SqlDataSource2" AutoGenerateColumns="False">

             
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="AvailableQuantity" HeaderText="AvailableQuantity" SortExpression="AvailableQuantity" />
                    <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                    <asp:BoundField DataField="Brand" HeaderText="Brand" SortExpression="Brand" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AppliedProjectConnectionString %>" SelectCommand="SELECT [AvailableQuantity], [ProductName], [Brand] FROM [Product]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AppliedProjectConnectionString %>" SelectCommand="SELECT [NumberOfProduct], [Brand] FROM [Product]"></asp:SqlDataSource>
           </center>
    </form>
    
        
     
</div>

<div id="Brands" class="tabcontent">
  <h3>Brands</h3>
  <p>Brands is the capital of France.</p> 
    
</div>

<div id="Products" class="tabcontent">
  <h3>Products</h3>
  <p>Products is the capital of Japan.</p>
</div>

<script>
    function openCity(evt, cityName) {
        var i, tabcontent, tablinks;
        tabcontent = document.getElementsByClassName("tabcontent");
        for (i = 0; i < tabcontent.length; i++) {
            tabcontent[i].style.display = "none";
        }
        tablinks = document.getElementsByClassName("tablinks");
        for (i = 0; i < tablinks.length; i++) {
            tablinks[i].className = tablinks[i].className.replace(" active", "");
        }
        document.getElementById(cityName).style.display = "block";
        evt.currentTarget.className += " active";
    }

    // Get the element with id="defaultOpen" and click on it
    document.getElementById("defaultOpen").click();
</script>
   
</html>
