function myfunction() {
    console.log("This is just a simple program");
    var x = 233, y = 23423;
    //An OBJECT
    var bike = {type: "xpulse", makeYear: "2022", color: "navyblue"}
    console.log(x + y);
    console.log(bike.makeYear);
}

function arrayInput() {
    console.log("This function uses and object and a METHOD for the object.");
    const person = {
        firstName: "John",
        lastName : "Doe",
        id       : 5566,
        fullName : function() {
          return this.firstName + " " + this.lastName;
        }
      };
    console.log(person.fullName())
}

function subString(){
    let text = "Micheal, Jackie and Pangre.";
    let part = text.substring(3, 9);
    let new_text = text.replace("Micheal", "Lucy");
    let new_upper = text.toUpperCase();
    console.log(new_text);
    console.log(part);
    console.log(new_upper);
    console.log(text.concat(" Also, ", new_text));
    console.log(text.split(","));
    console.log(text.lastIndexOf("Jackie"));
        
}

function yearPlay(){
    var currentYear = new Date().getTime();
    console.log(currentYear);
    
}
myfunction()
arrayInput()
subString()
yearPlay()