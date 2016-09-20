//
//  LinkedListQueue.m
//  LinkedListQueue
//
//  Created by  Ricky Tsao on 9/20/16.
//  Copyright © 2016 Epam. All rights reserved.
//

#import "LinkedListQueue.h"
#import "Node.h"

//for queues, head always points to the first.
//Tail will point to last, and enqueue.

@interface LinkedListQueue ()
{
    
}

@property (nonatomic, strong) Node * head;
@property (nonatomic, strong) Node * tail;
@end

@implementation LinkedListQueue

-(instancetype)init {

    if([super init]) {
        
        self.head = self.tail = nil;
    }
    
    return self;
}

-(void)enqueue:(NSString*)strData {

    if ((self.head == nil) && (self.tail == nil)) {
        self.tail = (self.head  = [[Node alloc] initWithData:strData andNext:nil]);
        NSLog(@"Enqueued %@", strData);
        return;
    }
    
    self.tail = (self.tail.next  = [[Node alloc] initWithData:strData andNext:nil]);
     NSLog(@"Enqueued %@", strData);
}

-(void)dequeue {
    
    if((self.head != nil) && (self.tail != nil)) {
        
        Node * temp = self.head;
        self.head = self.head.next;
        
        if(self.head == nil) {
            self.tail = nil;
        }
        
        NSLog(@"Dequeued %@ at %p", temp.strData, temp);
        return;
    }
    
    NSLog(@"Queue is empty. Nothing to dequeue");
}



-(Node*)findString:(NSString*)data {
   
    for (Node * temp = self.head; temp != nil; temp = temp.next) {
    
        if([temp.strData compare:data] == NSOrderedSame) {
            NSLog(@"Found %@ at %p", data, temp);
            return temp;
        }
    }
    
    NSLog(@"%@ not found", data);
    return nil;
}


-(void)printQueue {
    
    NSLog(@"== Beginning ==");
    for ( Node * temp = self.head; temp != nil; temp = temp.next) {
        NSLog(@"|%@|", temp.strData);
    }
    NSLog(@"== End       ==");
}

@end
