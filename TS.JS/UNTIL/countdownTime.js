//Since Time holds year month day and time. Can I be using classes?

const currentTime = new Date().getTime();

class yearAndTime {
    constructor(time, year, month, day, minute, second) {
        this.time = time;
        this.year = year;
        this.month = month;
        this.day = day;
        this.minute = minute;
        this.second = second;
    }

    timeReadableFormulas(){
        mainCountdown = 
        
    }


}

const showTime = new yearAndTime();
showTime.timeshow();






/*function days_until(){
    var currentTime = new Date().getTime();
    var deadLine = new Date("Jan 5, 2027 15:37:25").getTime();
    console.log(currentTime);
    console.log(deadLine);
    console.log(deadLine - currentTime);

}

days_until("Jan 5, 2023 15:37:25")*/