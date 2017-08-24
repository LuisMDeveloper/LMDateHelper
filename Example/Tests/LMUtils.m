//
// Created by Luis Manuel Ramirez Vargas on 23/08/17.
// Copyright (c) 2017 Luis Manuel Ramirez Vargas. All rights reserved.
//

#import "LMUtils.h"

@implementation LMUtils {

}
+ (NSDate *)getDateFromString:(NSString *)dateString withFormat:(NSString *)format{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:format];
    NSDate *spectedDate = [dateFormatter dateFromString:dateString];
    return spectedDate;
}
@end