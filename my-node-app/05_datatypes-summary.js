 // primitive

 // 7 types : string ,nmber , boolearn, null , undefined, symbol, Bignit

const score = 100
const scoreVlaue = 100.3

const isLoggedIn = false
const outsideTemp = null
let userEmail;

const id = Symbol('123')
const anotherId = Symbol('123')

//console.log(id === anotherId);
const bigNumber = 3425687944456214321448323443233846513433321548n

 // reference (Non primitive)

 // array, objects functions,
// arrays
 const heros = ("Ironman", "spiderman","hulk","thor", "captain america", "black widow");
 // objects
 let myObj ={
    name: "prince",
    age: 22,
 }
 // functions
 const myFunction = function (){
    console.log("hello world");

      
 }
 console.log(typeof bigNumber);
 
 // https://262.ecma-international.org/5.1/#sec-11.4.3