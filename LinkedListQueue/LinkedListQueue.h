//
//  LinkedListQueue.h
//  LinkedListQueue
//
//  Created by  Ricky Tsao on 9/20/16.
//  Copyright © 2016 Epam. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Node.h"

@interface LinkedListQueue : NSObject
{
    
}

-(void)enqueue:(NSString*)strData;
-(void)dequeue;
-(Node*)findString:(NSString*)data;

-(void)printQueue;

@end
