//.import "utilities2.js" as Utilities2
Qt.include("utilities2.js")

function greeting()
{
    console.log("Hello there from external JS file: utilities1.js")
}

function combineAges( age1, age2)
{
    return add(age1,age2)
}
