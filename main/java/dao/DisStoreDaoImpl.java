package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DecimalFormat;

import jdbc.DBcon;
import vo.OrderVO;



public class DisStoreDaoImpl implements DisStoreDao{
	private DBcon pool;
	
	private String sql;
	
	private Connection con;
	private PreparedStatement pstmt;
	private Statement stmt;
	private ResultSet rs;
	
	public DisStoreDaoImpl() {
		pool = DBcon.getInstance();
	}
	
	public int orderRegis(OrderVO orderVO) throws Exception {
        int result = 0;
        sql = "INSERT INTO tbl_order_202101 (orderno, orderdate, amount, shopno, pcode) VALUES (?, ?, ?, ?, ?)";
        con = pool.getConnection();
        
        try {
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, orderVO.getOrderno());
            pstmt.setString(2, orderVO.getOrderdate());
            pstmt.setInt(3, orderVO.getAmount());
            pstmt.setString(4, orderVO.getShopno());
            pstmt.setString(5, orderVO.getPcode());
            result = pstmt.executeUpdate();
        } catch (SQLException e) {
        	e.printStackTrace();
        }        
        return result;
    }

	@Override
	public int orderListSelect() throws Exception {
		int result = 0;
		DecimalFormat decimalFormat = new DecimalFormat("###,###");
		sql = "SELECT s.shopno, s.shopname, o.orderno, o.orderdate, p.pcode, p.pname, o.amount, p.cost, o.amount*p.cost price, o.amount*p.cost-(o.amount*p.cost * (s.discount/100)) disprice\r\n"
				+ "FROM tbl_order_202101 o, tbl_product_202101 p, tbl_shop_202101 s\r\n"
				+ "WHERE o.shopno = s.shopno and o.pcode = p.pcode;";
		con = pool.getConnection();
		stmt = con.createStatement();
		rs = stmt.executeQuery(sql);
		while(rs.next()) {
		try {
			rs.getString("shopno");
			rs.getString("shopname");
			rs.getString("orderno");
			rs.getString("orderdate");
			rs.getString("pcode");
			rs.getString("pname");
			decimalFormat.format(rs.getInt("amount"));
			decimalFormat.format(rs.getInt("cost"));
			decimalFormat.format(rs.getInt("price"));
			decimalFormat.format(rs.getInt("disprice"));
			}		
		} catch (Exception e) {
			// TODO: handle exception
		}
		return result;
	}

	@Override
	public int orderStatucBySelect() throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int productCodeSelect() throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

}
