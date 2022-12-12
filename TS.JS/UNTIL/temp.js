
function timetell(){
    var deadline = new Date("Jan 5, 2018 15:37:25").getTime();
    var x = setInterval(function() {
    var now = new Date().getTime();
    var t = deadline - now;
    var days = Math.floor(t / (1000 * 60 * 60 * 24));
    var hours = Math.floor((t%(1000 * 60 * 60 * 24))/(1000 * 60 * 60));
    var minutes = Math.floor((t % (1000 * 60 * 60)) / (1000 * 60));
    var seconds = math.floor((t % (1000 * 60)) / 1000);
    var total = days + "d " + hours + "h " + minutes + "m " + seconds + "s ";
    console.log(total);
}

timetell()