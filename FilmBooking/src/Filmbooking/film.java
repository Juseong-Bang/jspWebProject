package Filmbooking;

public class film {

	private int id_film;
	private String film_name;
	private int age_phase;
	private int seat_num;
	private String date;

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

	public int getAge_phase() {
		return age_phase;
	}

	public void setAge_phase(int age_phase) {
		this.age_phase = age_phase;
	}

	public int getSeat_num() {
		return seat_num;
	}

	public void setSeat_num(int seat_num) {
		this.seat_num = seat_num;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}
}
