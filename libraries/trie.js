/*
https://en.wikipedia.org/wiki/Trie 

Usage:
var x = new Trie()
x.Add("foo", {"something": "else"})
x.Add("foobar", 1)
x.Add("foll", 2)
console.log("looking up foo", x.Lookup("foo")) // {"something": "else"}
console.log("looking up bar", x.Lookup("bar")) // null
console.log("looking up foll", x.Lookup("foll")) // 2
console.log("delete foo", x.Delete("foo")) // undefined
console.log("looking up foobar", x.Lookup("foobar")) // 1
*/

/*
    key - one character
    payload - object/undefined
*/
function Node(key, parent, payload){
    this.Nodes = Object.create(null);
    this.key = key;
    this.payload = payload;
    this.parent = parent;
}

function Trie(){
    this.root = new Node("", null)
}

Trie.prototype.Add = function(keyString, payload) {
    if (!this.validKeyString(keyString)) return;
    var char;
    var node = this.root;
    for(var i =0; i < keyString.length; i++) {
        char = keyString[i];
        nodesLength = Object.keys(node.Nodes).length
        if ((nodesLength == 0) || (node.Nodes[char] == undefined)){
            var n = new Node(char, node);
            node.Nodes[char] = n;
            node = n;
        } else {
            node = node.Nodes[char];
        }
    }
    node.payload = payload;
}

Trie.prototype.Delete = function(keyString) {
    if (!this.validKeyString(keyString)) return;
    var char;
    var node = this.root;
    for(var i =0; i < keyString.length; i++) {
        char = keyString[i];
        nodesLength = Object.keys(node.Nodes).length
        if ((nodesLength == 0) || (node.Nodes[char] == undefined)){
            return
        } else {
            node = node.Nodes[char];
        }
    }
    while (node.parent != null && Object.keys(node.Nodes).length == 0) {
            char = node.key;
            node = node.parent;
            delete node.Nodes[char]
    }
}

/*
    Returns the payload monad if any
*/
Trie.prototype.Lookup = function(keyString) {
    if (!this.validKeyString(keyString)) return;
    var char;
    var node = this.root;
    for(var i =0; i < keyString.length; i++) {
        char = keyString[i];
        nodesLength = Object.keys(node).length
        if ((nodesLength == 0) || (node.Nodes[char] == undefined)){
            return null;
        } else {
            node = node.Nodes[char];
        }
    }
    return node.payload;
}

Trie.prototype.validKeyString = function(keyString) {
    return keyString.length > 0
}
