using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Reflection;
using MazeGen;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {
            Maze_Recursive_Backtracker m = new Maze_Recursive_Backtracker(25, 25);
            MazeUtils.ExportToImage(@"D:\testy.png", m, 20, 2, Color.FromName(cmbColours.SelectedItem.ToString()) );
        }

        else
        {
            foreach (PropertyInfo property in typeof(System.Drawing.Color).GetProperties(BindingFlags.Static | BindingFlags.Public))
                if (property.PropertyType == typeof(System.Drawing.Color))
                    cmbColours.Items.Add(property.Name);
        }
    }
}