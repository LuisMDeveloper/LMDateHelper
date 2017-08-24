//
// Created by Luis Manuel Ramirez Vargas on 23/08/17.
//

#import <Foundation/Foundation.h>
#include "LMDateType.h"

@interface NSDate (fromString)

+ (NSDate *)fromString:(NSString *)string;

+ (NSDate *)fromString:(NSString *)string format:(LMDateType)format;

@end