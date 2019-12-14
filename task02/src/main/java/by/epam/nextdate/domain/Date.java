package by.epam.nextdate.domain;

public class Date {
    private int day;
    private int month;
    private int year;

    public int getDay() {
        return day;
    }

    public int getMonth() {
        return month;
    }

    public int getYear() {
        return year;
    }

    public boolean isLeap(){
        if(year % 400 == 0){
            return false;
        }
        return (year % 4 == 0);
    }
}
