#import "NSMutableArray+QueueAdditions.h"

@implementation NSMutableArray (QueueAdditions)

// Queues are first-in-first-out, so we remove objects from the head
- (id) dequeue {
    if ([self count] == 0) return nil; // to avoid raising exception
    id headObject = [self objectAtIndex:0];
    if (headObject != nil) {
        [self removeObjectAtIndex:0];
    }
    return headObject;
}

// Add to the tail of the queue
- (void) enqueue:(id)anObject {
    [self addObject:anObject];
}

@end
