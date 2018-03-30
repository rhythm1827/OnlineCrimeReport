<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="HomePage" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <script src="js/jquery-2.1.4.min.js"></script>
    <script src="js/jquery.flip.min.js"></script>
    <script>
        $(function () {
            $(".flip").flip({
                trigger: 'hover'
            });
        });
</script>
    <link href="StyleSheet1.css" rel="stylesheet" />
    <style>
     .flip {
    height: 199px;
    width: 300px;
    margin: 0 auto;
}
.flip img {
    width: 300px;
    height: auto;
}
.flip img2 {
    width: 300px;
    height: 300px;
}
.flip .back {
    background: #2184cd;
    color: #fff;
    text-align: center;
}
</style>
    <style type="text/css">
        .auto-style7
        {
            width: 100%;
        }
        .auto-style8
        {
            height: 381px;
        }
        .auto-style9
        {
            width: 315px;
        }
        .auto-style11
        {
            width: 853px;
        }
        .auto-style12
        {
            height: 381px;
            width: 853px;
        }

        </style>
    <style>
div.img {
    margin: 5px;
    border: 1px solid #ccc777;
    float: left;
    width: 150px;
}
div.img:hover {
    border: 1px solid #777;
}
div.img img {
    width: 100%;
    height: auto;
}
div.desc {
    padding: 15px;
    text-align: center;
}
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style7">
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style11">
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td  align="left" class="auto-style9">
                <asp:Panel ID="Panel3" runat="server" Height="657px" Width="300px">
                      <div class="flip"> 
    <div class="front"> 
      <img src="imgs/women.jpg" alt="" />
    </div> 
    <div class="back">
         
        <h3 align="center">Women Power Line<br />Call 109</h3>
    </div> 
     </div>
                         <br />
    <div class="flip"> 
        <div class="front"> 
        <img src="imgs/chd.jpg" alt="" />
        </div> 
    <div class="back">
         
        <h3 align="center">Child Help Line<br />Call 109</h3>
    </div> 
     </div>
                         <br />
  <div class="flip"> 
    <div class="front"> 
      <img src="imgs/touristpolice.jpg" style="height:210px; width:280px;"/>
    </div> 
    <div class="back">
         
        <h3 align="center">Tourist Police Helpline<br />01769690740</h3>
    </div> 
     </div>
                </asp:Panel>
            </td>
            <td class="auto-style12">
               
                <cc1:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="0" Height="657px" Width="727px">
                    <cc1:TabPanel ID="TabPanel1" runat="server" HeaderText="LATEST NEWS/UPDATES">
                    
                           
                             <ContentTemplate><br /><br /><asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\projectLocalDB.mdf;Integrated Security=True;Connect Timeout=30" SelectCommand="SELECT TOP 10 [News] FROM [News]"></asp:SqlDataSource><marquee bgcolor="#2E9AFE" scrollamount="2" direction="up" loop="true"> <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" Width="647px"><ItemTemplate>&#160;&#160;&#160;&#160;&#160; &#160;<asp:Label ID="Label1" runat="server" Text='<%# Eval("News") %>'></asp:Label><br /><hr /></ItemTemplate></asp:DataList></marquee></ContentTemplate>
                        
                    </cc1:TabPanel>
                    <cc1:TabPanel ID="TabPanel2" runat="server" HeaderText="MISSING PERSON">
                        <HeaderTemplate>
                            MISSING PERSON
                        </HeaderTemplate>
                        <ContentTemplate><br /><br />
                          <div class="img">
  <a target="_blank" href="MissingPics/m (1).jpg">
    <img src="MissingPics/m (1).jpg"  width="300" height="200">
  </a>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<div class="desc"><p>Ahmed Khan</p><p>Reward tk: 100000</p></div>
</div>
                            <div class="img">
  <a target="_blank" href="MissingPics/f (1).jpg">
    <img src="MissingPics/f (1).jpg"  width="300" height="200">
  </a>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<div class="desc"><p>Archi Jubayer</p><p>Reward tk: 500000</p></div>
</div>
                            <div class="img">
  <a target="_blank" href="MissingPics/m (2).jpg">
    <img src="MissingPics/m (2).jpg"  width="300" height="200">
  </a>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<div class="desc"><p>Kamrul Hasan</p><p>Reward tk: 520000</p></div>
</div>
                            <div class="img">
  <a target="_blank" href="MissingPics/m (3).jpg">
    <img src="MissingPics/m (3).jpg"  width="300" height="200">
  </a>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<div class="desc"><p>Daud Khan</p><p>Reward tk: 150000</p></div>
</div>

                            <div class="img">
  <a target="_blank" href="MissingPics/m (4).jpg">
    <img src="MissingPics/m (4).jpg"  width="300" height="200">
  </a>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<div class="desc"><p>Saiful Islam</p><p>Reward tk: 220000</p></div>
</div>
                            <div class="img">
  <a target="_blank" href="MissingPics/m (5).jpg">
    <img src="MissingPics/m (5).jpg"  width="300" height="200">
  </a>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<div class="desc"><p>Jakai Siddique</p><p>Reward tk: 556000</p></div>
</div>
                            <div class="img">
  <a target="_blank" href="MissingPics/f (2).jpg">
    <img src="MissingPics/f (2).jpg"  width="300" height="200">
  </a>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<div class="desc"><p>Amina Khatun</p><p>Reward tk: 780000</p></div>
</div>
                            <div class="img">
  <a target="_blank" href="MissingPics/f (3).jpg">
    <img src="MissingPics/f (3).jpg"  width="300" height="200">
  </a>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<div class="desc"><p>Md. Sayeed Iqbal</p><p>Reward tk: 560000</p></div>
</div>




                        </ContentTemplate>
                    
                    
                    </cc1:TabPanel>
                    <cc1:TabPanel ID="TabPanel3" runat="server" HeaderText="MOST WANTED">
                        <ContentTemplate>

                            <div class="img">
  <a target="_blank" href="MissingPics/m (4).jpg">
    <img src="MissingPics/m (4).jpg"  width="300" height="200">
  </a>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<div class="desc"><p>Md. Sayeed</p><p>Reward tk: 888880</p></div>
</div>
                            <div class="img">
  <a target="_blank" href="MissingPics/mw (2).jpg">
    <img src="MissingPics/mw (2).jpg"  width="300" height="200">
  </a>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<div class="desc"><p>Yukiya Hasan</p><p>Reward tk: 560000</p></div>
</div>
                            <div class="img">
  <a target="_blank" href="MissingPics/mw (1).jpg">
    <img src="MissingPics/mw (1).jpg"  width="300" height="200">
  </a>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<div class="desc"><p>Samia Iqbal</p><p>Reward tk: 260000</p></div>
</div>
                            <div class="img">
  <a target="_blank" href="MissingPics/mw (3).jpg">
    <img src="MissingPics/mw (3).jpg"  width="300" height="200">
  </a>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<div class="desc"><p>Djanoar Saha</p><p>Reward tk: 760000</p></div>
</div>
                            <div class="img">
  <a target="_blank" href="MissingPics/mw (4).jpg">
    <img src="MissingPics/mw (4).jpg"  width="300" height="200">
  </a>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<div class="desc"><p>Md. Ahsan Alam</p><p>Reward tk: 960000</p></div>
</div>

                        </ContentTemplate>
                    </cc1:TabPanel>
                </cc1:TabContainer>
               
            </td>
            <td class="auto-style8" align="right">
                <asp:Panel ID="Panel2" runat="server" Height="657px">
                     <div class="flip"> 
    <div class="front"> 
      <img src="imgs/car.jpg" alt="" />
    </div> 
    <div class="back">
         
        <h3 align="center">Control Room<br />Call 999</h3>
    </div> 
     </div>
                      <br />
                          <div class="flip"> 
    <div class="front"> 
      <img src="imgs/Capture.JPG" alt="" />
    </div> 
    <div class="back">
         
        <h3 align="center">Fire Brigrade<br />Call Above Number</h3>
    </div> 
     </div>
   <br />
              <div class="flip"> 
    <div class="front"> 
      <img src="imgs/ambul.jpg" alt="" />
    </div> 
    <div class="back">
         
        <h3 align="center">Ambulance<br />Call Nearest Stations</h3>
    </div> 
     </div>      <br />            
                       
                </asp:Panel>
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

