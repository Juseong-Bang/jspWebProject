package Filmbooking;

public class resv {
	private int id_resv;
	private int id_mem;
	private int id_film;
	private String film_name;
	private String date;
	private String resv_date;
	private int seat_no;
	private boolean status;
	public int getId_resv() {
		return id_resv;
	}
	public void setId_resv(int id_resv) {
		this.id_resv = id_resv;
	}
	public int getId_mem() {
		return id_mem;
	}
	public void setId_mem(int id_mem) {
		this.id_mem = id_mem;
	}
	public int getId_film() {
		return id_film;
	}
	public void setId_film(int id_film) {
		this.id_film = id_film;
	}
	public String getFilm_name() {
		return film_name;
	}
	public void setFilm_name(String film_name) {
		this.film_name = film_name;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getResv_date() {
		return resv_date;
	}
	public void setResv_date(String resv_date) {
		this.resv_date = resv_date;
	}
	public int getSeat_no() {
		return seat_no;
	}
	public void setSeat_no(int seat_no) {
		this.seat_no = seat_no;
	}
	public boolean isStatus() {
		return status;
	}
	public void setStatus(boolean status) {
		this.status = status;
	}
	
}
