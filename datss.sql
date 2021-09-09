select * from Categories
select * from Products
select * from Accounts
select * from Orders
select * from OrderDetails
<div class="buttons_added">
Create proc sp_loaitruSP (@idCT char(4), @idP int)
As Begin
 begin try 

 select * from Products
where categoryId like @idCT
except
select * from Products where id like @idP

 end try
 begin catch
	print N'loc thất bại'+error_message()
	rollback tran
 end catch

End
GO

exec sp_loaitruSP @idCT='1',@idP =6

								<form action="/client/oderdetail/update" method="GET">

									<input class="minus is-form" type="submit" value="-"
										id="submitButton"> 
										<input aria-label="quantity"
										class="input-qty" max="10" min="1" th:name="soluong"
										type="number" th:value="${carts.value.quantity}"> 
										
										<input
										class="plus is-form" type="submit" value="+"
										id="submitButton">
										
									
								</form>

							</div>

<form th:action="@{/client/oderdetail/add-to-cart/cc}" method="get" enctype="text/plain">
														<select name="quantity" th:onchange="this.form.submit()" >
														<option th:each="item : ${#numbers.sequence(1,5)}" th:text ="${item}" >
									
														
														</option>
														<input type="hidden"
															th:value="${carts.value.product.id}"
															th:name="df" />
														</select>				
														
                </form>
insert into Products(name,image,price,CreateDate,available,categoryId) 
values('Death note','product_06.jpg',310000,'2019-07-21',1,5)
insert into Products(name,image,price,CreateDate,available,categoryId) 
values('Dragon ball super','product_01.jpg',210000,'2019-07-21',1,6)
insert into Products(name,image,price,CreateDate,available,categoryId) 
values('Sword art online','product_02.jpg',110000,'2019-07-21',1,7)
insert into Products(name,image,price,CreateDate,available,categoryId) 
values(N'Đế bá','product_03.jpg',380000,'2019-07-21',1,1)
insert into Products(name,image,price,CreateDate,available,categoryId) 
values(N'Trùng sinh chi đô thi cuồng tiên','product_04.jpg',310000,'2021-09-08',1,2)
insert into Products(name,image,price,CreateDate,available,categoryId) 
values(N'Vạn tộc chi kiếp','product_05.jpg',4310000,'2021-09-08',1,3)
insert into Products(name,image,price,CreateDate,available,categoryId) 
values('Naruto','product_06.jpg',80000,'2021-09-08',1,4)
insert into Products(name,image,price,CreateDate,available,categoryId) 
values('Re:Cre','product_01.jpg',10000,'2021-09-08',1,5)
SELECT COUNT(*) FROM Products p where categoryId = 
delete from Orders
where id =2
 <li><a href="#"><i class="fa fa-angle-double-right"></i></a></li>

                    <div class="col-lg-4 col-md-4 all dev">
                      <div class="product-item">
                        <a href="#"><img th:src="@{resource/assets/images/product_02.jpg}" alt=""></a>
                        <div class="down-content">
                          <a href="#"><h4>Tittle goes here</h4></a>
                          <h6>$16.75</h6>
                          <p>Lorem ipsume dolor sit amet, adipisicing elite. Itaque, corporis nulla aspernatur.</p>
                          <ul class="stars">
                            <li><i class="fa fa-star"></i></li>
                            <li><i class="fa fa-star"></i></li>
                            <li><i class="fa fa-star"></i></li>
                            <li><i class="fa fa-star"></i></li>
                            <li><i class="fa fa-star"></i></li>
                          </ul>
                          <span>Reviews (24)</span>
                        </div>
                      </div>
                    </div>
                    <div class="col-lg-4 col-md-4 all gra">
                      <div class="product-item">
                        <a href="#"><img th:src="@{resource/assets/images/product_03.jpg}" alt=""></a>
                        <div class="down-content">
                          <a href="#"><h4>Tittle goes here</h4></a>
                          <h6>$32.50</h6>
                          <p>Lorem ipsume dolor sit amet, adipisicing elite. Itaque, corporis nulla aspernatur.</p>
                          <ul class="stars">
                            <li><i class="fa fa-star"></i></li>
                            <li><i class="fa fa-star"></i></li>
                            <li><i class="fa fa-star"></i></li>
                            <li><i class="fa fa-star"></i></li>
                            <li><i class="fa fa-star"></i></li>
                          </ul>
                          <span>Reviews (36)</span>
                        </div>
                      </div>
                    </div>
                    <div class="col-lg-4 col-md-4 all gra">
                      <div class="product-item">
                        <a href="#"><img th:src="@{resource/assets/images/product_04.jpg}" alt=""></a>
                        <div class="down-content">
                          <a href="#"><h4>Tittle goes here</h4></a>
                          <h6>$24.60</h6>
                          <p>Lorem ipsume dolor sit amet, adipisicing elite. Itaque, corporis nulla aspernatur.</p>
                          <ul class="stars">
                            <li><i class="fa fa-star"></i></li>
                            <li><i class="fa fa-star"></i></li>
                            <li><i class="fa fa-star"></i></li>
                            <li><i class="fa fa-star"></i></li>
                            <li><i class="fa fa-star"></i></li>
                          </ul>
                          <span>Reviews (48)</span>
                        </div>
                      </div>
                    </div>
                    <div class="col-lg-4 col-md-4 all dev">
                      <div class="product-item">
                        <a href="#"><img th:src="@{resource/assets/images/product_05.jpg}" alt=""></a>
                        <div class="down-content">
                          <a href="#"><h4>Tittle goes here</h4></a>
                          <h6>$18.75</h6>
                          <p>Lorem ipsume dolor sit amet, adipisicing elite. Itaque, corporis nulla aspernatur.</p>
                          <ul class="stars">
                            <li><i class="fa fa-star"></i></li>
                            <li><i class="fa fa-star"></i></li>
                            <li><i class="fa fa-star"></i></li>
                            <li><i class="fa fa-star"></i></li>
                            <li><i class="fa fa-star"></i></li>
                          </ul>
                          <span>Reviews (60)</span>
                        </div>
                      </div>
                    </div>
                    <div class="col-lg-4 col-md-4 all des">
                      <div class="product-item">
                        <a href="#"><img th:src="@{resource/assets/images/product_06.jpg}" alt=""></a>
                        <div class="down-content">
                          <a href="#"><h4>Tittle goes here</h4></a>
                          <h6>$12.50</h6>
                          <p>Lorem ipsume dolor sit amet, adipisicing elite. Itaque, corporis nulla aspernatur.</p>
                          <ul class="stars">
                            <li><i class="fa fa-star"></i></li>
                            <li><i class="fa fa-star"></i></li>
                            <li><i class="fa fa-star"></i></li>
                            <li><i class="fa fa-star"></i></li>
                            <li><i class="fa fa-star"></i></li>
                          </ul>
                          <span>Reviews (72)</span>
                        </div>
                      </div>
                    </div>


$(document).ready(function() {

   
   // inspired by http://jsfiddle.net/arunpjohny/564Lxosz/1/
   $('.table-responsive-stack').find("th").each(function (i) {
      
      $('.table-responsive-stack td:nth-child(' + (i + 1) + ')').prepend('<span class="table-responsive-stack-thead">'+ $(this).text() + ':</span> ');
      $('.table-responsive-stack-thead').hide();
   });

   
   
   
   
$( '.table-responsive-stack' ).each(function() {
  var thCount = $(this).find("th").length; 
   var rowGrow = 100 / thCount + '%';
   //console.log(rowGrow);
   $(this).find("th, td").css('flex-basis', rowGrow);   
});
   
   
   
   
function flexTable(){
   if ($(window).width() < 768) {
      
   $(".table-responsive-stack").each(function (i) {
      $(this).find(".table-responsive-stack-thead").show();
      $(this).find('thead').hide();
   });
      
    
   // window is less than 768px   
   } else {
      
      
   $(".table-responsive-stack").each(function (i) {
      $(this).find(".table-responsive-stack-thead").hide();
      $(this).find('thead').show();
   });
      
      

   }
// flextable   
}      
 
flexTable();
   
window.onresize = function(event) {
    flexTable();
};
   
   
   
   

  
// document ready  
});
