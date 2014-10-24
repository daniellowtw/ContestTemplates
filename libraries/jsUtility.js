function binaryStringToString(x){return x.split(" ").map(function(y){return String.fromCharCode(parseInt(y,2))}).join("") }
function stringToBinaryString(x){return x.split("").map(function(x){return x.charCodeAt().toString(2)}).join(" ")}

function fastExp(base, exp){
    var result = 1;
    while(exp>0){
        if(exp&1) result*=base;
        base = base*base;
        exp = exp >>1;
    }
    return result;
}

function gcd(a,b){
    if (a > b )
        return gcd(b,a)
    if (b%a == 0)
        return a
    return gcd (b % a, a)
}

