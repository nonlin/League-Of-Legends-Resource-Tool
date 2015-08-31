using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Runtime.Serialization.Json;
using System.Net;



public partial class _Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=NONLINSPC\\SQLEXPRESS;Initial Catalog=LoLDatabase;Integrated Security=True");
    String stat;
    String table;
    string Name;
    float damageMulti = 0;
    float turretHealth = 0;
    float turretArmor = 0;
    int hits = 0;
    float attackDamage = 0;
    float attackSpeed = 0f;
    float time = 0; 
    //runes

    protected void Page_Load(object sender, EventArgs e)
    {
        table = DropDownList4.SelectedValue;
        CheckStat(table);
        if (table == "Scenario")
        {
            Button5.Visible = true;
            Button6.Visible = true;

        }
        else
        {
            Button5.Visible = false;
            Button6.Visible = false;
        }

        if (ViewState["turretHealth"] != null)
            {
                turretHealth = (float)ViewState["turretHealth"];
            }
        else
           {
         // ArrayList isn't in view state, so we need to load it from scratch.
            turretHealth = 0;
           }
        if (ViewState["hits"] != null){
             hits = (int)ViewState["hits"];
        }
        else{
            hits = 0; 
        }
        if (ViewState["AD"] != null)
        {
            attackDamage = (float)ViewState["AD"];
        }
        else
        {
            attackDamage = 0;
        }
        if (ViewState["AS"] != null)
        {
            attackSpeed = (float)ViewState["AS"];
        }
        else
        {
            attackSpeed = 0;
        }
        if (ViewState["DM"] != null)
        {
            damageMulti = (float)ViewState["DM"];
        }
        else
        {
            damageMulti = 0;
        }
        if (ViewState["Timer"] != null)
        {
            time = (float)ViewState["Timer"];
        }
        else
        {
            time = 0;
        }
    }
    void Page_PreRender(object sender, EventArgs e)
  {
    // Save PageArrayList before the page is rendered.
      ViewState.Add("turretHealth", turretHealth);
      ViewState.Add("hits", hits);
      ViewState.Add("AD", attackDamage);
      ViewState.Add("AS", attackSpeed);
      ViewState.Add("DM", damageMulti);
      ViewState.Add("Timer", time);
  }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        Button1.Focus();
    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {
        Button2.Focus();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String queryString = "SELECT * FROM ["+table+"] where (Name like '%' + @search + '%') ORDER BY Name";
        SqlCommand command = new SqlCommand(queryString,con);
        command.Parameters.Add("@search", SqlDbType.NVarChar).Value = TextBox1.Text;

        GridViewBind(command, "Name");
        Label3.Text = "Showing " + table + " Table";
       
    }
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        //set up for query before opening connection. Add a paremeter that takes the value of the text box and sets it to a Paramter that will be recgonized in SQL Syntax
        if (TextBox2.Text != string.Empty){
       
        String queryString = "SELECT * FROM ["+table+"] where (" + stat + " >= @Val) ORDER BY "+stat;
        SqlCommand command = new SqlCommand(queryString, con);
        command.Parameters.Add("@Val", SqlDbType.Float).Value = TextBox2.Text;

        GridViewBind(command, stat);
        }

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        //set up for query before opening connection. Add a paremeter that takes the value of the text box and sets it to a Paramter that will be recgonized in SQL Syntax
        if (TextBox3.Text != string.Empty) {
            
            String queryString = "SELECT * FROM ["+table+"] where (" + stat + " <= @Val) ORDER BY "+stat;
            SqlCommand command = new SqlCommand(queryString, con);
            command.Parameters.Add("@Val", SqlDbType.Float).Value = TextBox3.Text;

            GridViewBind(command, stat);
        }
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {//select type of champion
        string type = DropDownList2.SelectedValue;
        //set up for query before opening connection. Add a paremeter that takes the value of the text box and sets it to a Paramter that will be recgonized in SQL Syntax
        String queryString = "SELECT * FROM [champions] where (types = '" + type + "' )";
        SqlCommand command = new SqlCommand(queryString, con);
        GridViewBind(command, type);

    }

    protected void GridViewBind(SqlCommand command, string colName) {

        con.Open();
        command.ExecuteNonQuery();
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = command;
        DataSet ds = new DataSet();
        da.Fill(ds, colName);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        con.Close();
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

        if (table == "champions") { 
            Name = GridView1.SelectedRow.Cells[3].Text;
            Label1.Text = Name;

            float level = float.Parse(DropDownList8.SelectedValue);
            string sql = "INSERT INTO [LoLDatabase].[dbo].[Scenario] (Name, AttackLevel, AttackSpeedLevel, AttackBase, AttackSpeedBase) SELECT Name, attackLevel, attackSpeedLevel, attackBase + (attackLevel * " + level + ") as attackBase, ((0.625)/(1+(-1*attackSpeedBase)))  + ((attackSpeedLevel * (0.100)) * " + (level ) + ") * (0.100) as attackSpeedLevel FROM [LoLDatabase].[dbo].[champions] WHERE (champions.name = @name);";
            using (SqlCommand cmd = new SqlCommand(sql, con))
            {
                cmd.Connection.Open();
                cmd.Parameters.Add("@name", SqlDbType.NVarChar).Value = GridView1.SelectedRow.Cells[3].Text;
                cmd.ExecuteNonQuery();
                cmd.Connection.Close();
                //con.Close();
                Label2.Text = "Added Champion " + GridView1.SelectedRow.Cells[3].Text + " to Scenario Table";
            }

        }
        if (table == "items") {
            
            string sql = "INSERT INTO [LoLDatabase].[dbo].[Scenario] (Name,flatAttackDamageMod,flatAttackSpeedMod, percentAttackSpeedMod, percentAttackDamageMod) SELECT Name,flatAttackDamageMod,flatAttackSpeedMod, percentAttackSpeedMod, percentAttackDamageMod FROM [LoLDatabase].[dbo].[items] WHERE (items.name = @name);";
                using(SqlCommand cmd = new SqlCommand(sql, con))
                {
                    cmd.Connection.Open();
                    cmd.Parameters.Add("@name", SqlDbType.NVarChar).Value = GridView1.SelectedRow.Cells[3].Text;
                    cmd.ExecuteNonQuery();
                    cmd.Connection.Close();
              
                    Label2.Text = "Added Item " + GridView1.SelectedRow.Cells[3].Text + " to Scenario Table";
                }
        }
        if (table == "Runes") {
            
        }
        //On Select Delete Row for Scenario Table
        if (table == "Scenario") {

            String queryString = "SET ROWCOUNT 1 DELETE FROM [LoLDatabase].[dbo].[Scenario] WHERE Name = @name;";
            using (SqlCommand command = new SqlCommand(queryString, con)) {
                command.Connection.Open();
                command.Parameters.Add("@name", SqlDbType.NVarChar).Value = GridView1.SelectedRow.Cells[2].Text;
                command.ExecuteNonQuery();
                command.Connection.Close();
                Label2.Text = "Deleted " + GridView1.SelectedRow.Cells[2].Text;
            }
           
            String queryString2 = "SELECT * FROM [Scenario];";
            SqlCommand command2 = new SqlCommand(queryString2, con);
            GridViewBind(command2, "Name");
 

        }

        if (table == "Targets") {

            string sql = "INSERT INTO [LoLDatabase].[dbo].[Scenario] (Name,TargetArmor,TargetHealth) SELECT Name,Armor,Health FROM [LoLDatabase].[dbo].[Targets] WHERE ([Targets].name = @name);";
            using (SqlCommand cmd = new SqlCommand(sql, con))
            {
                cmd.Connection.Open();
                cmd.Parameters.Add("@name", SqlDbType.NVarChar).Value = GridView1.SelectedRow.Cells[2].Text;
                cmd.ExecuteNonQuery();
                cmd.Connection.Close();
               
                Label2.Text = "Added Target " + GridView1.SelectedRow.Cells[2].Text + " to Scenario Table";
            }
        }
       
        foreach (GridViewRow row in GridView1.Rows)
        {
            if (row.RowIndex == GridView1.SelectedIndex)
            {
                row.BackColor = ColorTranslator.FromHtml("#A1DCF2");
                row.ToolTip = string.Empty;

                
            }
            else
            {
                row.BackColor = ColorTranslator.FromHtml("#FFFFFF");
                row.ToolTip = "Click to select this row.";
            }
        }
    }
    protected void OnRowDataBound(object sender, System.Web.UI.WebControls.GridViewRowEventArgs e)
    {   //Clickable row
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            e.Row.Attributes["onclick"] = Page.ClientScript.GetPostBackClientHyperlink(GridView1, "Select$" + e.Row.RowIndex);
            e.Row.ToolTip = "Click to select this row.";
        }
        e.Row.Cells[1].Visible = false;
        //e.Row.Cells[2].Visible = false;
        if (table == "Scenario")
        {
            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                if (GridView1.Rows[i].Cells[12].Text.Length > 1 && GridView1.Rows[i].Cells[13].Text.Length > 1 && GridView1.Rows[i].Cells[14].Text.Length > 1)
                {
                  //  Label6.Text = (GridView1.Rows[i].Cells[12].Text);
                   // Label7.Text = (GridView1.Rows[i].Cells[13].Text);
                    //Label8.Text = (GridView1.Rows[i].Cells[14].Text);

                    //turretHealth = float.Parse(GridView1.Rows[i].Cells[12].Text);
                    //attackDamage = float.Parse(GridView1.Rows[i].Cells[13].Text);
                    //attackSpeed = float.Parse(GridView1.Rows[i].Cells[14].Text);
                }
            }
        }
    }

    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }

    protected void CheckStat(string table_) {
        if (table_ == "champions")
            stat = DropDownList1.SelectedValue;
        if (table_ == "items")
            stat = DropDownList3.SelectedValue;
        if (table_ == "Runes")
            stat = DropDownList1.SelectedValue;
    }



    protected void Button4_Click(object sender, EventArgs e)
    {
        if (Label1.Text.Length < 17) {
            String queryString = "SELECT a.name, a.cost, a.cooldown, a.[range], a.effect, a.[description], a.hotkey FROM championAbilities a join champions b on a.championId = b.id where b.name = '"+Label1.Text+"' ;";
            SqlCommand command = new SqlCommand(queryString, con);
            //command.Parameters.Add("@Val", SqlDbType.Float).Value = TextBox3.Text;

            con.Open();
            command.ExecuteNonQuery();
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = command;
            DataSet ds = new DataSet();
            da.Fill(ds, Label1.Text);
            GridView3.DataSource = ds;
            GridView3.DataBind();
            con.Close();
        }
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        String queryString0 = "INSERT INTO [LoLDatabase].[dbo].[Scenario] (TargetArmor, TargetHealth, ChampTotalAttackDamage, ChampTotalAttackSpeed ,Name ) SELECT SUM(COALESCE(TargetArmor,0)) as TargetArmor, SUM(COALESCE(TargetHealth,0)) as TargetHealth, SUM(COALESCE(flatAttackDamageMod,0)) + (SUM(COALESCE(AttackBase,0)) * sum(COALESCE(percentAttackDamageMod,0))) + SUM(COALESCE(AttackBase,0)) as ChampTotalAttackDamage, SUM(COALESCE(flatAttackSpeedMod,0)) + (SUM(COALESCE(AttackSpeedBase,0)) * sum(COALESCE(percentAttackSpeedMod,0))) + SUM(COALESCE(AttackSpeedBase,0)) as ChampTotalAttackSpeed,'Final Case' FROM [LoLDatabase].[dbo].[Scenario];";
        using (SqlCommand command = new SqlCommand(queryString0, con))
        {
            command.Connection.Open();
            command.ExecuteNonQuery();
            command.Connection.Close();
        }

        String queryString2 = "SELECT * FROM [Scenario];";
        SqlCommand command2 = new SqlCommand(queryString2, con);
        GridViewBind(command2, "Name");
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        simulation();
    }

    protected void simulation() {

        string sql = "SELECT ChampTotalAttackDamage FROM [LoLDatabase].[dbo].[Scenario] WHERE ([LoLDatabase].[dbo].[Scenario].name = 'Final Case');";
        using (SqlCommand cmd = new SqlCommand(sql, con))
        {
            cmd.Connection.Open();
            attackDamage = (float)Convert.ToDouble(cmd.ExecuteScalar());
            cmd.Connection.Close();
        }
        string sql2 = "SELECT ChampTotalAttackSpeed FROM [LoLDatabase].[dbo].[Scenario] WHERE ([LoLDatabase].[dbo].[Scenario].name = 'Final Case');";
        using (SqlCommand cmd = new SqlCommand(sql2, con))
        {
            cmd.Connection.Open();
            attackSpeed = (float)Convert.ToDouble(cmd.ExecuteScalar());
            cmd.Connection.Close();
        }

 
        Label7.Text = attackDamage.ToString();
        Label6.Text = attackSpeed.ToString();
        if (turretHealth <= 0) {
            string sql3 = "SELECT TargetHealth FROM [LoLDatabase].[dbo].[Scenario] WHERE ([LoLDatabase].[dbo].[Scenario].name = 'Final Case');";
            using (SqlCommand cmd = new SqlCommand(sql3, con))
            {
                cmd.Connection.Open();
                turretHealth = (float)Convert.ToDouble(cmd.ExecuteScalar());
                cmd.Connection.Close();
            }
            Label8.Text = turretHealth.ToString();
            hits = 0;
        }
        if (turretHealth > 0 && attackDamage > 0 && attackSpeed > 0)
        {
            if (turretArmor >= 0)
            {
                damageMulti = (100 / (100 + turretArmor));
            }
            else
                damageMulti = (2 - (100 / (100 - turretArmor)));

            Label4.Text = turretHealth.ToString();
            Timer1.Interval = ((int)(1000/attackSpeed));


            Timer1.Enabled = true;
            time = (float)DateTime.Now.Second;
        }

        else Label4.Text = "Can't Run Simulation, Make sure you have a champion and target";

    }

    protected void Timer1_Tick(object sender, EventArgs e)
    {
        Label8.Text = turretHealth.ToString();
        Label7.Text = attackDamage.ToString();
        Label6.Text = attackSpeed.ToString();
        if (turretHealth > 0)
        {
            
            turretHealth = turretHealth - (attackDamage * 0.5f);
            hits++;
        }
        else
        {
            Timer1.Enabled = false;
            time = (float)DateTime.Now.Second - time;
            Label9.Text = "Elapsed Time in Seconds: " + time.ToString();
            //time = 0; 
        }
        Label4.Text = turretHealth.ToString();
        Label5.Text = hits.ToString();

    }

}

