<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="product.aspx.cs" Inherits="product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <section>
         <div id="head">
            <div class="line">
               <h1>QUẢN LÝ SẢN PHẨM</h1>
            </div>
         </div>
         <div id="content">
            <div class="line">
                <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="408px" AutoGenerateRows="False" DataKeyNames="id" DataSourceID="SqlDataSource1" AllowPaging="True" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                    <EditRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <Fields>
                        <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
                        <asp:BoundField DataField="ten" HeaderText="ten" SortExpression="ten" />
                        <asp:BoundField DataField="gia" HeaderText="gia" SortExpression="gia" />
                        <asp:BoundField DataField="soluong" HeaderText="soluong" SortExpression="soluong" />
                        <asp:BoundField DataField="loaihang_id" HeaderText="loaihang_id" SortExpression="loaihang_id" />
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                    </Fields>
                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                    <HeaderTemplate>
                        Quản lý sản phẩm
                    </HeaderTemplate>
                    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" ForeColor="#003399" />
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:banhangConnectionString %>" DeleteCommand="DELETE FROM [Sanpham] WHERE [id] = @id" InsertCommand="INSERT INTO [Sanpham] ([id], [ten], [gia], [soluong], [loaihang_id]) VALUES (@id, @ten, @gia, @soluong, @loaihang_id)" SelectCommand="SELECT [id], [ten], [gia], [soluong], [loaihang_id] FROM [Sanpham]" UpdateCommand="UPDATE [Sanpham] SET [ten] = @ten, [gia] = @gia, [soluong] = @soluong, [loaihang_id] = @loaihang_id WHERE [id] = @id">
                    <DeleteParameters>
                        <asp:Parameter Name="id" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="id" Type="String" />
                        <asp:Parameter Name="ten" Type="String" />
                        <asp:Parameter Name="gia" Type="Int32" />
                        <asp:Parameter Name="soluong" Type="Int32" />
                        <asp:Parameter Name="loaihang_id" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="ten" Type="String" />
                        <asp:Parameter Name="gia" Type="Int32" />
                        <asp:Parameter Name="soluong" Type="Int32" />
                        <asp:Parameter Name="loaihang_id" Type="String" />
                        <asp:Parameter Name="id" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </div>
         </div>
         <!-- GALLERY -->	
         <div id="third-block">
            <div class="line">
               <h2>mobile gallery</h2>
               <p>.</p>
                <p>.</p>
                <p>.</p>
                <p>.</p>
               <div class="margin">
                  <div class="s-12 m-6 l-3">
                      <img src="img/iphone7s.jpg" />
                     <p class="subtitile">Iphone 7 đẳng cấp
                     </p>
                  </div>
                  <div class="s-12 m-6 l-3">
                      <img src="img/oppof1s.jpg" />
                     <p class="subtitile">Camera phone sang chảnh
                     </p>
                  </div>
                  <div class="s-12 m-6 l-3">
                      <img src="img/sonyxz.jpg" />
                     <p class="subtitile">Sony thời thượng
                     </p>
                  </div>
                  <div class="s-12 m-6 l-3">
                      <img src="img/sss7.jpg" />  
                     <p class="subtitile">Sam Sung tinh tế
                     </p>
                  </div>
               </div>
            </div>
         </div>
         <div id="fourth-block">
            <div class="line">
               <div id="owl-demo2" class="owl-carousel owl-theme">
                  <div class="item">
                     <h3 class="s-12 m-12 l-8 center">Những mấu điện thoại mới nhất</h3>
                      <p> </p>
                      <p> </p>
                     <p class="s-12 m-12 l-8 center">Luôn cập nhật xu thế điện thoại mới
                     </p>
                  </div>
                  <div class="item">
                     <h3 class="s-12 m-12 l-8 center">Chế độ bảo hành</h3>
                      <p> </p>
                      <p> </p>
                     <p class="s-12 m-12 l-8 center">Trung tâm bảo hành luôn khiến cho khách hàng hài lòng
                     </p>
                  </div>
                  <div class="item">
                     <h3 class="s-12 m-12 l-8 center">Giá</h3>
                      <p> </p>
                      <p> </p>
                     <p class="s-12 m-12 l-8 center">Giá cả phải chăng, luôn kèm khuyến mãi hấp dẫn
                     </p>
                  </div>
               </div>
            </div>
         </div>
      </section>
</form>
</asp:Content>

