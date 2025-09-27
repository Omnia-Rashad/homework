void main() {
  ListNode head = ListNode(1, ListNode(2, ListNode(3)));

  print("Original list:");
  printList(head);

  ListNode? reversed = reverseList(head);

  print("Reversed list:");
  printList(reversed);
}

class ListNode {
  int val;
  ListNode? next;
  ListNode(this.val, [this.next]);
}

ListNode? reverseList(ListNode? head) {
  ListNode? prev = null;
  ListNode? current = head;

  while (current != null) {
    ListNode? next = current.next;
    current.next = prev;
    prev = current;
    current = next;
  }
  return prev;
}

void printList(ListNode? head) {
  while (head != null) {
    print(head.val);
    head = head.next;
  }
}
