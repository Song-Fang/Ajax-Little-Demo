package com.ajax.daoimpl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.ajax.dao.UserDao;
import com.ajax.domain.User;

public class UserDaoImpl implements UserDao {
	@Override
	public User getUserInfo(String name) {
		User u = new User();
		try {
			// 加载驱动类
			Class.forName("com.mysql.jdbc.Driver");
			// 创建数据库连接对象
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/users", "root", "yourDBpasswordhere");
			// 创建sql语句
			String sql = "select * from user where uname = ?";
			// 创建sql命令对象
			PreparedStatement ps = conn.prepareStatement(sql);
			// 给占位符赋值
			ps.setString(1, name);
			// 遍历查询
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				u.setUid(rs.getInt("uid"));
				u.setUname(rs.getString("uname"));
				u.setPrice(rs.getDouble("price"));
				u.setLoc(rs.getString("loc"));
				u.setDesc(rs.getString("des"));

			}
			// 关闭资源
		} catch (Exception e) {

		}

		return u;

	}
}
