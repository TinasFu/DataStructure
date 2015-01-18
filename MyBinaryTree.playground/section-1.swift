// Playground - noun: a place where people can play


class Node {
    var value : Int?
    var left : Node?
    var right : Node?
    
    init (value: Int) {
        self.value = value
    }
}


class BSTree {
    var root : Node?
    
    func insertNode (value: Int) {
        var newNode = Node(value:value)
        var currNode : Node? = root
        
        if (currNode == nil) {
            self.root = newNode
        }
        while currNode != nil {
            var currValue = currNode?.value
            if currValue < value {
                if currNode!.right != nil {
                    currNode = currNode!.right
                    
                }
                else {
                    currNode!.right = newNode
                    return
                }
            }
            else {
                if currNode!.left != nil {
                    currNode = currNode!.left
                    
                }
                else {
                    currNode!.left = newNode
                    return
                }
            }
        }
    }
}

var bst = BSTree()
bst.insertNode(5)
bst.insertNode(8)
bst.insertNode(10)
bst.insertNode(3)
bst.insertNode(1)
bst.root?.value
bst.root?.left?.value
bst.root?.right?.value
bst.root?.right?.right?.value
bst.root?.left?.left?.value












