//
// Created by Luis Manuel Ramirez Vargas on 23/08/17.
//

#import "NSDate+fromString.h"

@implementation NSDate (fromString)

LMDateType defaultFormat = ISODate;

+ (NSDate *)fromString:(NSString *)string {
    return [self fromString:string format:defaultFormat];
}

+ (NSDate *)fromString:(NSString *)string format:(LMDateType)format {

    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    NSString *stringFormat = [self getStringFormat:format];
    [dateFormatter setDateFormat:stringFormat];

    return [dateFormatter dateFromString:string];
}

- (NSString *)toStringWithFormat:(LMDateType)format {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    NSString *stringFormat = [NSDate getStringFormat:format];
    [dateFormatter setDateFormat:stringFormat];

    return [dateFormatter stringFromDate:self];
}

+ (NSString *)getStringFormat:(LMDateType)format {
    switch (format) {
        case ISOYear:
            return @"yyyy";
        case ISOYearMonth:
            return @"yyyy-MM";
        case ISODate:
            return @"yyyy-MM-dd";
        case ISODateTime:
            return @"yyyy-MM-dd'T'HH:mmZ";
        case ISODateTimeSec:
            return @"yyyy-MM-dd'T'HH:mm:ssZ";
        case ISODateTimeMilliSec:
            return @"yyyy-MM-dd'T'HH:mm:ss.SSSZ";
    }
}
@end