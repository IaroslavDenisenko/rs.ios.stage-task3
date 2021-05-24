#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Node: NSObject

+ (instancetype)nodeWithNumber:(NSNumber *)number;
- (instancetype)initWithNumber:(NSNumber *)number;
+ (instancetype)nodeTreeWithQueue:(NSMutableArray *)numbersQueue;

@property (nonatomic, strong) NSNumber *number;
@property (nonatomic, strong) Node *left;
@property (nonatomic, strong) Node *right;

@end

NS_ASSUME_NONNULL_END
