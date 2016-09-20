# LinkedListQueue

<h3>Enqueue</h3>

Enqueue is the process of adding a node to the queue. By definition, additional nodes being enqueued will be added behind it, like people getting in line.

The head maintains position and references the first node. This is so that for finding nodes and printing them, we know where the list starts.

The tail maintains position and references the last node. The tail reference is what keeps position so we know where to enqueue. By definition, we always add the node to the back of the list. Thus, the tail keeps tract of that.


<h3>Dequeue</h3>

Dequeue is the processing of removing nodes from the queue. By definition, we must remove at the beginning of the list. In other words, we remove fairly. Whoever gets added in first, gets to be removed first...so on and so forth.

The head maintains position and reference the first node. Thus, it is where we will be doing our dequeueing. The head simply repoints to the next node. Obj C's reference counting mechanism will decide when to remove and deallocate the dequeued node object.


