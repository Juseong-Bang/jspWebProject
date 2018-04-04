package Filmbooking;

public class seat {

private int id_seat;
private int id_film;
private boolean[] s=new boolean [9];
public int getId_seat() {
	return id_seat;
}
public void setId_seat(int id_seat) {
	this.id_seat = id_seat;
}
public int getId_film() {
	return id_film;
}
public void setId_film(int id_film) {
	this.id_film = id_film;
}
public boolean getSeat(int num) {
	return s[num];
}
public void setSeat(int num,boolean value ) {
	 s[num]=value;
}
public boolean[] getS() {
	return s;
}
public void setS(boolean[] s) {
	this.s = s;
}

}
