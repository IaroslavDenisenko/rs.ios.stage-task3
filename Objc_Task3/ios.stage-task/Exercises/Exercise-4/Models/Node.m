#import "Node.h"
#import "NSMutableArray+QueueAdditions.h"

@implementation Node

+ (instancetype)nodeWithNumber:(id)number {
    return [[self alloc] initWithNumber:number];
}

- (instancetype)initWithNumber:(id)number {
    self = [super init];
    if (self) {
        _number = number;
    }
    return self;
}

+ (instancetype)nodeTreeWithQueue:(NSMutableArray *)numbersQueue {
    
    Node *node;
    
    id rootObject = numbersQueue.dequeue;
    if ([rootObject isKindOfClass:NSNumber.class]) {
        node = [Node nodeWithNumber:rootObject];
        node.left  = [Node nodeTreeWithQueue:numbersQueue];
        node.right = [Node nodeTreeWithQueue:numbersQueue];
    }
    
    return node;
}

@end
