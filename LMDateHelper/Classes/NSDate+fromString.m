//
// Created by Luis Manuel Ramirez Vargas on 23/08/17.
//

#import "NSDate+fromString.h"

@implementation NSDate (fromString)

+ (NSDate *)fromString:(NSString *)string {

    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd"];
    NSDate *date = [dateFormatter dateFromString:string];

    return date;
}

@end