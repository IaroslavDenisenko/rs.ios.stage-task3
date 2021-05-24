#import "LevelOrderTraversal.h"
#import "Node.h"
#import "NSMutableArray+QueueAdditions.h"

NSArray *LevelOrderTraversalForTree(NSArray *tree) {
    
    if (tree.count < 1 || tree.firstObject == NSNull.null) {
        return @[];
    }
    
    Node *binaryTree = [Node nodeTreeWithQueue:[tree mutableCopy]];
    
    NSMutableArray<NSArray *> *result = [NSMutableArray array];
    NSMutableArray *queue = [@[binaryTree] mutableCopy];
    
    while(queue.count > 0) {
        NSMutableArray *array = [NSMutableArray array];
        int length = (int)queue.count;
        for (int i = 0; i < length; i++) {
            
            Node *node = queue.dequeue;
            [array addObject:node.number];
            
            if (node.left) {
                [queue enqueue:node.left];
            }
            if (node.right) {
                [queue enqueue:node.right];
            }
        }
        [result addObject:array];
    }
    
    return [result copy];
}
