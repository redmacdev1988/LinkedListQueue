//
//  main.m
//  LinkedListQueue
//
//  Created by  Ricky Tsao on 9/20/16.
//  Copyright © 2016 Epam. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LinkedListQueue.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");

        LinkedListQueue * queue = [[LinkedListQueue alloc] init];
        [queue enqueue:@"ricky"];
        [queue enqueue:@"dean"];
        [queue enqueue:@"ivan"];
        [queue enqueue:@"ralph"];
        
        [queue findString:@"ricky"];
        
        [queue printQueue];
        
        [queue dequeue];
        [queue dequeue];
        [queue findString:@"ricky"];
        
        [queue printQueue];
        
        char str[50] = {0};
        printf("\n -------INFO: Type a character to end terminal...----------\n\n");
        scanf("%s", str);
        
        
    }
    return 0;
}
