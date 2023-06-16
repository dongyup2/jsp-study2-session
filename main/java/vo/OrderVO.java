package vo;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
@NoArgsConstructor
@AllArgsConstructor
@Data
@Builder
public class OrderVO {
    private String orderno;
    private String orderdate;
    private String shopno; // tbl_shop_202101 와의 관계
    private int amount;
    private String pcode; // tbl_product_202101 와의 관계

public OrderVO toEntity() {
	return OrderVO.builder()
			.orderno(orderno)
			.orderdate(orderdate)
			.amount(amount)
			.shopno(shopno)
			.pcode(pcode)
			.build();
}
}