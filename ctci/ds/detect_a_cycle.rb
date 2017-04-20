/*
Detect a cycle in a linked list. Note that the head pointer may be 'null' if the list is empty.

A Node is defined as: 
    class Node {
        int data;
        Node next;
    }
*/

boolean hasCycle(Node head) {
    
    Set<Node> encountered = new HashSet<Node>();
    
    Node curr = head;
    
    while (curr != null) {
        if (encountered.contains(curr)) {
            return true;   
        }
        
        encountered.add(curr);

        curr = curr.next;
        
    }

    return false;
}

