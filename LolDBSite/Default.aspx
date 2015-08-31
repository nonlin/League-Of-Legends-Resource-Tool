<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" EnableEventValidation = "false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>League Of Legends Database</title>
    <link rel="shortcut icon" type="image/x-icon" href="images/fav_icon.ico/"/>
    
    <style>/* 
*	
*	CSSG Collections: Forms
*	designed and coded by Alen Grakalic (http://cssglobe.com)
*	brought to you by Templatica (http://templatica.com)
*
*/

body{ 
	background:#f8f8f8;
	font:13px Trebuchet MS, Arial, Helvetica, Sans-Serif;
	color:#333;
	line-height:160%;
	margin:0;
	padding:0;
	text-align:center;
	}

h1{
	font-size:200%;
	font-weight:normal;
	}		
h2, h3, h4, h5, h6{
	font-weight:normal;
	margin:1em 0;
	}	
h2{            
	font-size:160%;
	}	
h3{          
	font-size:140%;
	}
h4{          
	font-size:120%;
	}				

a{
	text-decoration:none;
	color:#f30;
	}
a:hover{
	color:#999;
	}			
table, input, textarea, select, li{
	font:100% Trebuchet MS, Arial, Helvetica, Sans-Serif;
	line-height:160%;
	color:#333;
	}				
p, blockquote, ul, ol, form{
	margin:1em 0;
	}
blockquote{
	}
img{
	border:none;
	}			
hr{
	display:none;
	}	
table{
	margin:1em 0;
	width:100%;
	border-collapse:collapse;
	}
th, td{	
	padding:2px 5px;
	}	
th{	
	text-align:left;
	}
li{
	display:list-item;
	}	
	
#container{	
	margin:0 auto;
	background:#fff;
	width:600px;
	padding:20px 40px;
	text-align:left;
	}		


/* form 1 */

	#form1{
		margin:1em 0;
		padding-top:10px;
		background:url(../images/form1/form_top.gif) no-repeat 0 0;
		}
	#form1 fieldset{
		margin:0;
		padding:0;
		border:none;	
		float:left;
		display:inline;
		width:260px;
		margin-left:25px;
		}		
	#form1 legend{display:none;}	
	#form1 p{margin:.5em 0;}	
	#form1 label{display:block;}	
	#form1 input, #form1 textarea{		
		width:252px;
		border:1px solid #ddd;
		background:#fff url(../images/form1/form_input.gif) repeat-x;
		padding:3px;
		}		
	#form1 textarea{
		height:125px;
		overflow:auto;
		}					
	#form1 p.submit{
		clear:both;
		background:url(../images/form1/form_bottom.gif) no-repeat 0 100%;
		padding:0 25px 20px 25px;
		margin:0;
		text-align:right;
		}	
	#form1 button{
		width:150px;
		height:37px;
		line-height:37px;		
		border:none;
		background:url(../images/form1/form_button.gif) no-repeat 0 0;
		color:#fff;
		cursor:pointer;
		text-align:center;
		}				

/* // form 1 */


/* form 2 */

	#form2{
		margin:1em 0;
		color:#fff;
		width:320px; /* customize width, this form have fluid layout */
		}
	#form2 h3{
		margin:0;
		background:#57a700 url(../images/form2/form_heading.gif) repeat-x;		
		color:#fff;
		font-size:20px;
		border:1px solid #57a700;
		border-bottom:none;
		}		
	#form2 h3 span{
		display:block;
		padding:10px 20px;
		background:url(../images/form2/form_ico.gif) no-repeat 93% 50%;			
		}				
	#form2 fieldset{
		margin:0;
		padding:0;
		border:none;	
		border-top:3px solid #000;
		background:#000 url(../images/form2/form_top.gif) repeat-x;		
		padding-bottom:1em;
		}		
	#form2 legend{display:none;}	
	#form2 p{margin:.5em 20px;}	
	#form2 label{display:block;}	
	#form2 input, #form2 textarea{		
		width:272px;
		border:1px solid #111;
		background:#282828 url(../images/form2/form_input.gif) repeat-x;
		padding:5px 3px;
		color:#fff;
		}		
	#form2 textarea{
		height:125px;
		overflow:auto;
		}					
	#form2 p.submit{
		text-align:right;
		}	
	#form2 button{
		padding:0 20px;
		height:32px;
		line-height:32px;		
		border:1px solid #70ad2e;
		background:#5aae00 url(../images/form2/form_button.gif) repeat-x;
		color:#fff;
		cursor:pointer;		
		text-align:center;		
		}				

/* // form 2 */

/* form 3 */

	#form3{
		margin:1em 0;
		background:url(../images/form3/form_bg.jpg) no-repeat 0 0;
		width:542px;
		height:364px; /* fixed size (envelope graphic) */
		overflow:hidden;
		}
	#form3 h3{display:none;}	
	#form3 fieldset{
		margin:0;
		padding:0;
		border:none;	
		float:left;
		display:inline;
		width:200px;
		margin-left:34px;
		padding-top:80px;
		}	
	#form3 fieldset.last{
		width:254px;
		margin-left:17px;
		}				
	#form3 legend{display:none;}	
	#form3 p{margin:.5em 0;}	
	#form3 label{display:block;}	
	#form3 input, #form3 textarea{		
		width:192px;
		border:1px solid #ddd;
		background:#fff url(../images/form3/form_input.gif) repeat-x;
		padding:3px;
		}		
	#form3 textarea{
		width:246px;
		height:200px;
		overflow:auto;
		}					
	#form3 p.submit{
		margin:0 34px;
		clear:both;
		position:relative;
		}	
	#form3 button{
		padding:0;
		position:absolute;
		left:0;
		top:-3.5em;
		width:95px;
		height:36px;
		text-indent:-8000px;
		overflow:hidden;
		border:none;
		background:url(../images/form3/form_button.gif) no-repeat 0 0;
		color:#fff;
		cursor:pointer;
		}				

/* // form 3 */

/* form 4 */

	#form4{
		margin:1em 0;
		padding-top:1.5em;
		color:#246878;
		width:350px; /* customize width, this form have fluid layout */
		background:#fbfaf4 url(../images/form4/form_bg.gif) repeat-y;		
		}
	#form4 h3{
		margin:0 20px;
		height:28px;
		text-indent:-8000px;
		background:url(../images/form4/form_heading.gif) no-repeat 0 0;	
		}		
	#form4 fieldset{
		margin:0;
		padding:0;
		border:none;	
		padding-bottom:1em;
		}		
	#form4 legend{display:none;}	
	#form4 p{margin:.5em 20px;}	
	#form4 label{display:block;}	
	#form4 input, #form4 textarea{		
		width:302px;
		border:1px solid #dfdfdf;
		background:#fff;
		padding:5px 3px;
		}		
	#form4 textarea{
		height:125px;
		overflow:auto;
		}					
	#form4 p.submit{
		text-align:right;
		}	
	#form4 button{
		margin:0;
		padding:0;
		text-indent:-8000px;
		overflow:hidden;
		width:88px;
		height:56px;
		border:none;
		background:url(../images/form4/form_button.gif) no-repeat 0 0;
		cursor:pointer;
		text-align:left;
		}				

/* // form 4 */


/* form 5 */

	#form5{
		margin:1em 0;
		padding-top:10px;
		}
	#form5 fieldset{
		margin:0;
		padding-top:.5em;
		border:none;	
		border-top:1px solid #f1f1f1;
		}		
	#form5 legend{
		background:#fff;
		padding:0 5px;
		font-style:italic;
		}	
	#form5 p{
		clear:both;
		margin:.5em 0;
		overflow:hidden;
		}	
	#form5 label{
		float:left;
		width:60px;
		display:block;
		text-align:right;
		margin-right:10px;
		}	
	#form5 input, #form5 textarea{	
		margin:0;	
		width:250px;
		border:1px solid #ddd;		
		padding:3px 5px 3px 25px;
		}		
	
	
	#form5 input#name{background:#fff url(../images/form5/form_name.gif) no-repeat 5px 50%;}
	#form5 input#email{background:#fff url(../images/form5/form_email.gif) no-repeat 5px 50%;}
	#form5 input#web{background:#fff url(../images/form5/form_url.gif) no-repeat 5px 50%;}
	#form5 textarea#message{background:#fff url(../images/form5/form_note.gif) no-repeat 5px 6px;}
	
	
	#form5 textarea{
		height:125px;
		overflow:auto;
		}					
	#form5 p.submit{
		clear:both;
		margin:1em 0;
		padding:.5em 70px;
		border-top:1px solid #f1f1f1;		
		
		}	
	#form5 button{
		height:28px;
		line-height:28px;		
		border-top:1px solid #999;
		border-left:1px solid #999;
		border-right:1px solid #333;
		border-bottom:1px solid #333;
		background:url(../images/form5/form_button.gif) no-repeat;
		padding:0 10px 0 25px;
		color:#333;
		cursor:pointer;
		text-align:left;
		font-size:11px;
		font-weight:bold;
		}				

/* // form 5 */
</style>
</head>
<body>
    <form id="form1" runat="server">
        <h1>League Of Legends Database</h1>
        <h2>A resource tool for players!</h2>
        <h3>Based on game patch 4.19</h3>
        <p>Select a table and search by name&nbsp;&nbsp;&nbsp; </p>
    <div>
    
        <asp:DropDownList ID="DropDownList4" runat="server" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged">
            <asp:ListItem Value="champions">Champions</asp:ListItem>
            <asp:ListItem Value="Runes">Runes</asp:ListItem>
            <asp:ListItem Value="items">Items</asp:ListItem>
            <asp:ListItem Value="Targets">Targets</asp:ListItem>
            <asp:ListItem Value="championAbilities">ChampionAbilities</asp:ListItem>
            <asp:ListItem>Scenario</asp:ListItem>
        </asp:DropDownList>
    
        <asp:TextBox ID="TextBox1" placeholder="Type Champion Name" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Search" />
    
        <span class="auto-style2">&nbsp;<br />
        Champion Search Options<br />
        <span class="auto-style1">
        By Stat</span>&nbsp; <span class="auto-style1">&nbsp;<asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem Value="moveSpeed">MoveSpeed</asp:ListItem>
            <asp:ListItem Value="range_">Range</asp:ListItem>
            <asp:ListItem Value="armorBase">Armor</asp:ListItem>
            <asp:ListItem Value="armorLevel">Armor Level</asp:ListItem>
            <asp:ListItem Value="manaBase">Mana Base</asp:ListItem>
            <asp:ListItem Value="manaLevel"></asp:ListItem>
            <asp:ListItem Value="criticalChanceBase"></asp:ListItem>
            <asp:ListItem>criticalChanceLevel</asp:ListItem>
            <asp:ListItem>manaRegenBase</asp:ListItem>
            <asp:ListItem>manaRegenLevel</asp:ListItem>
            <asp:ListItem>healthRegenBase</asp:ListItem>
            <asp:ListItem>healthRegenLevel</asp:ListItem>
            <asp:ListItem>magicResistBase</asp:ListItem>
            <asp:ListItem>magicResistLevel</asp:ListItem>
            <asp:ListItem>healthBase</asp:ListItem>
            <asp:ListItem>healthLevel</asp:ListItem>
            <asp:ListItem>attackBase</asp:ListItem>
            <asp:ListItem>attackLevel</asp:ListItem>
            <asp:ListItem>attackSpeedBase</asp:ListItem>
            <asp:ListItem>attackSpeedLevel</asp:ListItem>
        </asp:DropDownList>
        &nbsp;Click to see Champion:
        <asp:Label ID="Label1" runat="server" Text="&quot;Select A Champion&quot;"></asp:Label>
        &nbsp;Abilities
        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="ShowAbilities" Width="118px" />
        SQL Select Command:
        <asp:Label ID="Label2" runat="server" Text="No SQL Commands Completed"></asp:Label>
        <br />
        By Type<asp:DropDownList ID="DropDownList2" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" AutoPostBack="true">
            <asp:ListItem Value="fighter">Fighter</asp:ListItem>
            <asp:ListItem Value="mage">Mage</asp:ListItem>
            <asp:ListItem Value="assassin">Assassin</asp:ListItem>
            <asp:ListItem Value="support">Support</asp:ListItem>
            <asp:ListItem Value="marksman">Marksman</asp:ListItem>
            <asp:ListItem Value="tank">Tank</asp:ListItem>
        </asp:DropDownList>
        &nbsp;Champion Level for Scenario Case:&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList8" runat="server">
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            <asp:ListItem>5</asp:ListItem>
            <asp:ListItem>6</asp:ListItem>
            <asp:ListItem>7</asp:ListItem>
            <asp:ListItem>8</asp:ListItem>
            <asp:ListItem>9</asp:ListItem>
            <asp:ListItem>10</asp:ListItem>
            <asp:ListItem>11</asp:ListItem>
            <asp:ListItem>12</asp:ListItem>
            <asp:ListItem>13</asp:ListItem>
            <asp:ListItem>14</asp:ListItem>
            <asp:ListItem>15</asp:ListItem>
            <asp:ListItem>16</asp:ListItem>
            <asp:ListItem>17</asp:ListItem>
            <asp:ListItem>18</asp:ListItem>
        </asp:DropDownList>
&nbsp;<div>
            <asp:GridView ID="GridView3" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BackColor="White" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
        </div>
        ------------------------------------------------</span></span><span class="auto-style1"><br />
        Item Seach Options&nbsp;&nbsp;&nbsp;&nbsp;<br />
        <span class="auto-style2">By Stat <asp:DropDownList ID="DropDownList3" runat="server" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
            <asp:ListItem Value="price">Price</asp:ListItem>
            <asp:ListItem Value="flatHPPoolMod">HP</asp:ListItem>
            <asp:ListItem Value="flatMPPoolMod">MP</asp:ListItem>
            <asp:ListItem Value="percentHPPoolMod">%HP</asp:ListItem>
            <asp:ListItem Value="percentMPPoolMod">%MP</asp:ListItem>
            <asp:ListItem Value="flatHPRegenMod">HP Regeneration</asp:ListItem>
            <asp:ListItem Value="percentHPRegenMod">% HP Regeneration</asp:ListItem>
            <asp:ListItem Value="flatMPRegenMod">MP Regeneration</asp:ListItem>
            <asp:ListItem Value="percentMPRegenMod">% MP Regeneration</asp:ListItem>
            <asp:ListItem Value="flatArmorMod">Armor</asp:ListItem>
            <asp:ListItem Value="percentArmorMod">% Armor</asp:ListItem>
            <asp:ListItem Value="flatAttackDamageMod">Attack Damage</asp:ListItem>
            <asp:ListItem Value="percentAttackDamageMod">% Attack Damage</asp:ListItem>
            <asp:ListItem Value="flatAbilityPowerMod">AP</asp:ListItem>
            <asp:ListItem Value="percentAbilityPowerMod">% AP</asp:ListItem>
            <asp:ListItem Value="flatMovementSpeedMod">Movement Speed</asp:ListItem>
            <asp:ListItem Value="percentMovementSpeedMod">% Movement Speed</asp:ListItem>
            <asp:ListItem Value="flatAttackSpeedMod">Attack Speed</asp:ListItem>
            <asp:ListItem Value="percentAttackSpeedMod">% Attack Speed</asp:ListItem>
            <asp:ListItem Value="flatCritChanceMod">CritChance</asp:ListItem>
            <asp:ListItem Value="percentCritChanceMod">% CritChance</asp:ListItem>
            <asp:ListItem Value="flatCritDamageMod">Crit Damage</asp:ListItem>
            <asp:ListItem Value="percentCritDamageMod">%CritDamage</asp:ListItem>
            <asp:ListItem Value="flatMagicResistMod">Magic Resist</asp:ListItem>
            <asp:ListItem Value="percentMagicResistMod">%Magic Resist</asp:ListItem>
        </asp:DropDownList>
        <br />
        ------------------------------------------------<br />
        Rune Search Options<br />
        By Stat<asp:DropDownList ID="DropDownList5" runat="server">
            <asp:ListItem>FlatMagicDamageMod</asp:ListItem>
            <asp:ListItem>rPercentCooldownModPerLevel</asp:ListItem>
            <asp:ListItem>rPercentCooldownMod</asp:ListItem>
            <asp:ListItem>PercentAttackSpeedMod</asp:ListItem>
            <asp:ListItem>rFlatEnergyRegenModPerLevel</asp:ListItem>
            <asp:ListItem>rFlatHPRegenModPerLevel</asp:ListItem>
            <asp:ListItem>PercentMovementSpeedMod</asp:ListItem>
            <asp:ListItem>FlatMPPoolMod</asp:ListItem>
            <asp:ListItem>FlatEnergyPoolMod</asp:ListItem>
            <asp:ListItem>FlatHPPoolMod</asp:ListItem>
            <asp:ListItem>FlatEnergyRegenMod</asp:ListItem>
            <asp:ListItem>rFlatEnergyModPerLevel</asp:ListItem>
            <asp:ListItem>rFlatMagicDamageModPerLevel</asp:ListItem>
            <asp:ListItem>FlatPhysicalDamageMod</asp:ListItem>
            <asp:ListItem>rFlatPhysicalDamageModPerLevel</asp:ListItem>
            <asp:ListItem>rFlatMagicPenetrationMod</asp:ListItem>
            <asp:ListItem>FlatCritChanceMod</asp:ListItem>
            <asp:ListItem>rFlatArmorPenetrationMod</asp:ListItem>
            <asp:ListItem>FlatArmorMod</asp:ListItem>
            <asp:ListItem>FlatSpellBlockMod</asp:ListItem>
            <asp:ListItem>rFlatSpellBlockModPerLevel</asp:ListItem>
        </asp:DropDownList>
        <br />
        ------------------------------------------------<br />
        Enter a Stat Value</span><br />
        Value &gt;= <asp:TextBox ID="TextBox2" runat="server" Width="41px"></asp:TextBox>
        <span class="auto-style2">&nbsp;<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Search" />
        <br />
        Value &lt;= <asp:TextBox ID="TextBox3" runat="server" Width="41px"></asp:TextBox>
        &nbsp;<asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Search" />
        </span>&nbsp;<br />
        <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Calculate Final Case Results" />
        <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Run Scenario" />
        AS:
        <asp:Label ID="Label6" runat="server" Text="-"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;AD:
        <asp:Label ID="Label7" runat="server" Text="-"></asp:Label>
        &nbsp;&nbsp;&nbsp;Target Health:
        <asp:Label ID="Label8" runat="server" Text="-"></asp:Label>
        <asp:UpdateProgress ID="UpdateProgress1" runat="server">
        </asp:UpdateProgress>
        <asp:ScriptManager runat="server" id="ScriptManager1" />
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <span class="auto-style1">
                <asp:Timer ID="Timer1" runat="server" OnTick="Timer1_Tick">
                </asp:Timer>
                Turret Health:
                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                </span>&nbsp;Total Hits:
                <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
            </ContentTemplate>
        </asp:UpdatePanel>

        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
            <ContentTemplate>
                <span class="auto-style1">
                <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                </span>
            </ContentTemplate>
        </asp:UpdatePanel>

        <br />
        <span class="auto-style2">
        <asp:Label ID="Label3" runat="server" Text="Search a Table to see results below!"></asp:Label>
        </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"  OnRowDataBound = "OnRowDataBound" AutoGenerateSelectButton="True">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:TemplateField>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <asp:LinkButton ID="lnkDummy" runat="server"></asp:LinkButton>
    </form>
</body>
</html>
