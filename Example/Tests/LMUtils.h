//
// Created by Luis Manuel Ramirez Vargas on 23/08/17.
// Copyright (c) 2017 Luis Manuel Ramirez Vargas. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <LMDateHelper/LMDateType.h>

@interface LMUtils : NSObject

+ (NSDate *)getDateFromString:(NSString *)dateString withFormat:(NSString *)format;

+ (void)testNSDateCreationWith:(NSString *)dateString format:(NSString *)format dateType:(LMDateType)dateType;
@end