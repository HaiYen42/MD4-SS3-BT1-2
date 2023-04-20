select * from orders;
/*Hiển thị các thông tin  gồm oID, oDate, oPrice của tất cả các hóa đơn trong bảng Order*/
select oId, cId, oDate from orders;
select customer.cName, product.pName
from orderdetail
inner join product on product.pId = orderdetail.pId
inner join orders on orders.oId = orderdetail.oId
inner join customer on customer.cId = orders.cId;
/*Hiển thị tên những khách hàng không mua bất kỳ một sản phẩm nào*/
select customer.cName
from customer
inner join orders on customer.cId != orders.cId;
/*Hiển thị mã hóa đơn, ngày bán và giá tiền của từng hóa đơn (giá một hóa đơn được tính bằng tổng giá bán của từng loại mặt hàng xuất hiện trong hóa đơn. Giá bán của từng loại được tính = odQTY*pPrice)*/
select orders.oId as "Order Id ", customer.cName as "Customer", orders.oDate as "Order Date ", sum(orderdetail.odQty* product.pPrice) as "Total"
from orderdetail
inner join product on orderdetail.pId = product.pId
inner join orders on orderdetail.oId = orders.oId
inner join customer on customer.cId = orders.cId
  GROUP BY Orders.oID;
