//
//  Node.m
//  LinkedListQueue
//
//  Created by  Ricky Tsao on 9/20/16.
//  Copyright © 2016 Epam. All rights reserved.
//

#import "Node.h"

@implementation Node

-(instancetype)initWithData:(NSString*)data andNext:(Node*)next {
    
    if ([super init] != nil) {
        
        self.strData = data;
        self.next = next;
    }
    return self;
}


@end
