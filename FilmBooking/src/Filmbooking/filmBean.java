package Filmbooking;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class filmBean {

	Connection conn = null;
	PreparedStatement pstmt = null;
	String jdbc_url = "jdbc:mysql://localhost/film_booking";
	String jdbc_driver = "com.mysql.jdbc.Driver";

	void connect() {
		try {
			Class.forName(jdbc_driver);

			conn = DriverManager.getConnection(jdbc_url, "root", "1234");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	void disconnect() {
		if (pstmt != null) {
			try {
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if (conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

	public boolean updateDB(film movie) {
		connect();

		String sql = "update film set film_name=?, age_phase=?, seat_num=?, date=? where id_film=?";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, movie.getFilm_name());
			pstmt.setInt(2, movie.getAge_phase());
			pstmt.setInt(3, movie.getSeat_num());
			pstmt.setString(4, movie.getDate());
			pstmt.setInt(5, movie.getId_film());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		} finally {
			disconnect();
		}
		return true;
	}

	public boolean deleteDB(int gd_film) {
		connect();

		String sql = "delete from film where id_film=?";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, gd_film);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		} finally {
			disconnect();
		}
		return true;
	}
	

	public boolean insertDB(film movie) {
		connect();

		String sql = "insert into film( id_film ,film_name, age_phase, seat_num, date) values(default,?,?,?,?)";
		try {

			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, movie.getFilm_name());
			pstmt.setInt(2, movie.getAge_phase());
			pstmt.setInt(3, movie.getSeat_num());
			pstmt.setString(4, movie.getDate());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		} finally {
			disconnect();
		}
		return true;
	}

	public film getDB(int gd_film) {
		connect();

		String sql = "select * from film where id_film=?";
		film movie = new film();

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, gd_film);
			ResultSet rs = pstmt.executeQuery();

			rs.next();
			movie.setId_film(rs.getInt("id_film"));
			movie.setFilm_name(rs.getString("film_name"));
			movie.setAge_phase(rs.getInt("age_phase"));
			movie.setSeat_num(rs.getInt("seat_num"));
			movie.setDate(rs.getString("date"));

			rs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			disconnect();
		}
		return movie;
	}
	
	public film getFilm(String film_name) {
		connect();

		String sql = "select * from film where film_name=?";
		film movie = new film();

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, film_name);
			ResultSet rs = pstmt.executeQuery();

			rs.next();
			movie.setId_film(rs.getInt("id_film"));
			movie.setFilm_name(rs.getString("film_name"));
			movie.setAge_phase(rs.getInt("age_phase"));
			movie.setSeat_num(rs.getInt("seat_num"));
			movie.setDate(rs.getString("date"));

			rs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			disconnect();
		}
		return movie;
	}

	public ArrayList<film> getDBList() {
		connect();

		ArrayList<film> movie_list = new ArrayList<film>();

		String sql = "select * from film order by id_film asc";
		try {
			pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				film movie = new film();
				movie.setId_film(rs.getInt("id_film"));
				movie.setFilm_name(rs.getString("film_name"));
			//	System.out.println("in:" + rs.getString("film_name") + " id_film:" + rs.getInt("id_film"));
				movie.setAge_phase(rs.getInt("age_phase"));
				movie.setSeat_num(rs.getInt("seat_num"));
				movie.setDate(rs.getString("date"));

				movie_list.add(movie);
			}
			rs.close();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			disconnect();
		}
		return movie_list;
	}
}