<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <section>
         <div id="head">
            <div class="line">
               <h1>Example of contact page</h1>
            </div>
         </div>
         <div id="content" class="left-align contact-page">
            <div class="line">
               <div class="margin">
                  <div class="s-12 l-6">
                     <h2>Vision Design - graphic zoo</h2>
                     <address>
                        <p><i class="icon-home icon"></i> Gallayova 19, 841 02 Bratislava</p>
                        <p><i class="icon-globe_black icon"></i> Slovakia - Europe</p>
                        <p><i class="icon-mail icon"></i> info@visiondesign.sk</p>
                     </address>
                     <br />
                     <h2>Social</h2>
                     <p><i class="icon-facebook icon"></i> <a href="https://www.facebook.com/pages/Vision-Design-graphic-ZOO/154664684553091">Vision Design - graphic zoo</a></p>
                     <p><i class="icon-facebook icon"></i> <a href="https://www.facebook.com/myresponsee">Responsee</a></p>
                     <p class="margin-bottom"><i class="icon-twitter icon"></i> <a href="https://twitter.com/MyResponsee">Responsee</a></p>
                  </div>
                  <div class="s-12 l-6">
                      <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="id" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None">
                          <AlternatingRowStyle BackColor="PaleGoldenrod" />
                          <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                          <Fields>
                              <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
                              <asp:BoundField DataField="ten" HeaderText="ten" SortExpression="ten" />
                              <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                          </Fields>
                          <FooterStyle BackColor="Tan" />
                          <HeaderStyle BackColor="Tan" Font-Bold="True" />
                          <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                      </asp:DetailsView>
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\v11.0;AttachDbFilename=E:\banhang.mdf;Integrated Security=True;Connect Timeout=30" DeleteCommand="DELETE FROM [loaihang] WHERE [id] = @id" InsertCommand="INSERT INTO [loaihang] ([id], [ten]) VALUES (@id, @ten)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [id], [ten] FROM [loaihang]" UpdateCommand="UPDATE [loaihang] SET [ten] = @ten WHERE [id] = @id">
                          <DeleteParameters>
                              <asp:Parameter Name="id" Type="String" />
                          </DeleteParameters>
                          <InsertParameters>
                              <asp:Parameter Name="id" Type="String" />
                              <asp:Parameter Name="ten" Type="String" />
                          </InsertParameters>
                          <UpdateParameters>
                              <asp:Parameter Name="ten" Type="String" />
                              <asp:Parameter Name="id" Type="String" />
                          </UpdateParameters>
                      </asp:SqlDataSource>
                  </div>
               </div>
            </div>
         </div>
         <!-- MAP -->	
         <div id="map-block">  	  
            <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d682251.1123056135!2d17.063451638281247!3d48.09010461740988!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x476c8cbf758ecb9f%3A0xddeb1d26bce5eccf!2sGallayova+2150%2F19%2C+841+02+D%C3%BAbravka%2C+Slovensk%C3%A1+republika!5e0!3m2!1ssk!2s!4v1412519122400" width="100%" height="450" frameborder="0" style="border:0"></iframe>
         </div>
         <div id="fourth-block">
            <div class="line">
               <div id="owl-demo2" class="owl-carousel owl-theme">
                  <div class="item">
                     <h2>Amazing responsive template</h2>
                     <p class="s-12 m-12 l-8 center">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.
                     </p>
                  </div>
                  <div class="item">
                     <h2>Responsive components</h2>
                     <p class="s-12 m-12 l-8 center">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.
                     </p>
                  </div>
                  <div class="item">
                     <h2>Retina ready</h2>
                     <p class="s-12 m-12 l-8 center">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.
                     </p>
                  </div>
               </div>
            </div>
         </div>
      </section>
    </form>
</asp:Content>

