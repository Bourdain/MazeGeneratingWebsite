<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript">
        function changeTXT() {
            var width = document.getElementById("ContentPlaceHolder1_width_range");
            var height = document.getElementById("ContentPlaceHolder1_height_range");    
            var txtW = document.getElementById("txtWidth");
            var txtH = document.getElementById("txtHeight");

            txtW.value = width.value;
            txtH.value = height.value;
        }

        function changeSlider() {
            var width = document.getElementById("ContentPlaceHolder1_width_range");
            var height = document.getElementById("ContentPlaceHolder1_height_range");
            var txtW = document.getElementById("txtWidth");
            var txtH = document.getElementById("txtHeight");

            if (!isNaN(txtW.value) && parseInt(txtW.value) >= parseInt(width.min) && parseInt(txtW.value) <= parseInt(width.max)) {
                width.value = txtW.value;
            }


            if (!isNaN(txtH.value) && parseInt(txtH.value) >= parseInt(height.min) && parseInt(txtH.value) <= parseInt(height.max)) {
                height.value = txtH.value;
            }

        }

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <label>Width: </label>    
    <input type="text" id="txtWidth" style="width:50px" oninput="changeSlider()" />
    <input runat="server" id="width_range" name="width_control" type="range" min="3" max="50" oninput="changeTXT()" /> 
    <br />
    
    <label>Height: </label>    
    <input type="text" id="txtHeight" style="width:50px" oninput="changeSlider()" />
    <input runat="server" id="height_range" name="height_control" type="range" min="3" max="50" oninput="changeTXT()" />
    <br />

    <ajaxToolkit:ComboBox ID="cmbColours" runat="server"></ajaxToolkit:ComboBox>

    <button type="submit">Generate Maze</button>



     <script>
         
         var width = document.getElementById("ContentPlaceHolder1_width_range");
         var height = document.getElementById("ContentPlaceHolder1_height_range");
         width.value = width.max / 2;
         height.value = height.max / 2;
         window.onload = changeTXT();
    </script>
</asp:Content>

