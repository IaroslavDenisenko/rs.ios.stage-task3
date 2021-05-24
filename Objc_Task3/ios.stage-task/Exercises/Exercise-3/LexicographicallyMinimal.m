#import "LexicographicallyMinimal.h"

@interface LexicographicallyMinimal()

@property (nonatomic, strong) NSMutableString *resultString;

@end

@implementation LexicographicallyMinimal

-(NSString *)findLexicographicallyMinimalForString1:(NSString *)string1 andString2:(NSString *)string2 {
    
    if (string1.length != 0 || string2.length != 0) {
        if (string2.length == 0) {
            if (string1.length > 1) {
                return [[string1 substringToIndex:1] stringByAppendingString: [self findLexicographicallyMinimalForString1:[string1 substringFromIndex:1] andString2:string2]];
            } else {
                return [[string1 substringToIndex:1] stringByAppendingString: [self findLexicographicallyMinimalForString1:@"" andString2:string2]];
            }
        } else if (string1.length == 0) {
            if (string2.length > 1) {
                return [[string2 substringToIndex:1] stringByAppendingString: [self findLexicographicallyMinimalForString1:[string2 substringFromIndex:1] andString2:string1]];
            } else {
                return [[string2 substringToIndex:1] stringByAppendingString: [self findLexicographicallyMinimalForString1:@"" andString2:string1]];
            }
        } else {
            if ([string1 characterAtIndex:0] < [string2 characterAtIndex:0]) {
                if (string1.length > 1) {
                    return [[string1 substringToIndex:1] stringByAppendingString: [self findLexicographicallyMinimalForString1:[string1 substringFromIndex:1] andString2:string2]];
                } else {
                    return [[string1 substringToIndex:1] stringByAppendingString: [self findLexicographicallyMinimalForString1:@"" andString2:string2]];
                }
            } else {
                if (string2.length > 1) {
                    return [[string2 substringToIndex:1] stringByAppendingString: [self findLexicographicallyMinimalForString1:[string2 substringFromIndex:1] andString2:string1]];
                } else {
                    return [[string2 substringToIndex:1] stringByAppendingString: [self findLexicographicallyMinimalForString1:@"" andString2:string1]];
                }
            }
        }
    }

    return @"";
}

@end
