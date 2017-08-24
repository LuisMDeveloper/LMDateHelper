//
//  LMDateHelperTests.m
//  LMDateHelperTests
//
//  Created by Luis Manuel Ramirez Vargas on 08/23/2017.
//  Copyright (c) 2017 Luis Manuel Ramirez Vargas. All rights reserved.
//

#import <LMDateHelper/NSDate+fromString.h>
#import "LMUtils.h"

SPEC_BEGIN(NSDateExtensionSpec)
    describe(@"NSDateExtension", ^{
        context(@"created from", ^{
            it(@"returns NSDate", ^{
                NSString *dateString = @"1995-12-25";

                id date = [NSDate fromString:dateString];
                [[date should] beKindOfClass:[NSDate class]];
            });

            it(@"string with format ISO", ^{
                NSString *dateString = @"1995-12-25";
                NSString *format = @"yyyy-MM-dd";

                NSDate *date = [NSDate fromString:dateString];
                NSDate *expectedDate = [LMUtils getDateFromString:dateString withFormat:format];

                [[date should] equal:expectedDate];
            });
        });
    });
SPEC_END



