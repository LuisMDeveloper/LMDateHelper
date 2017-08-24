//
//  LMDateHelperTests.m
//  LMDateHelperTests
//
//  Created by Luis Manuel Ramirez Vargas on 08/23/2017.
//  Copyright (c) 2017 Luis Manuel Ramirez Vargas. All rights reserved.
//

#import <LMDateHelper/NSDate+fromString.h>
#import <LMDateHelper/LMDateType.h>
#import "LMUtils.h"

SPEC_BEGIN(NSDateExtensionSpec)
    describe(@"NSDateExtension", ^{
        context(@"created from", ^{
            it(@"returns NSDate", ^{
                NSString *dateString = @"1991-12-25";

                id date = [NSDate fromString:dateString format:ISODate];
                [[date should] beKindOfClass:[NSDate class]];
            });

            it(@"string with format ISO Year", ^{
                NSString *dateString = @"1991";
                NSString *format = @"yyyy";

                NSDate *date = [NSDate fromString:dateString format:ISOYear];
                NSDate *expectedDate = [LMUtils getDateFromString:dateString withFormat:format];

                [[date should] equal:expectedDate];
            });

            it(@"string with format ISO YearMonth", ^{
                NSString *dateString = @"1991-12";
                NSString *format = @"yyyy-MM";

                NSDate *date = [NSDate fromString:dateString format:ISOYearMonth];
                NSDate *expectedDate = [LMUtils getDateFromString:dateString withFormat:format];

                [[date should] equal:expectedDate];
            });

            it(@"string with format ISO Date", ^{
                NSString *dateString = @"1991-12-25";
                NSString *format = @"yyyy-MM-dd";

                NSDate *date = [NSDate fromString:dateString format:ISODate];
                NSDate *expectedDate = [LMUtils getDateFromString:dateString withFormat:format];

                [[date should] equal:expectedDate];
            });

            it(@"string with format ISO DateTime", ^{
                NSString *dateString = @"1991-07-16T19:20+01:00";
                NSString *format = @"yyyy-MM-dd'T'HH:mmZ";

                NSDate *date = [NSDate fromString:dateString format:ISODateTime];
                NSDate *expectedDate = [LMUtils getDateFromString:dateString withFormat:format];

                [[date should] equal:expectedDate];
            });

            it(@"string with format ISO DateTimeSec", ^{
                NSString *dateString = @"1991-07-16T19:20:30+01:00";
                NSString *format = @"yyyy-MM-dd'T'HH:mm:ssZ";

                NSDate *date = [NSDate fromString:dateString format:ISODateTimeSec];
                NSDate *expectedDate = [LMUtils getDateFromString:dateString withFormat:format];

                [[date should] equal:expectedDate];
            });

            it(@"string with format ISO DateTimeMilliSec", ^{
                NSString *dateString = @"1991-07-16T19:20:30.45+01:00";
                NSString *format = @"yyyy-MM-dd'T'HH:mm:ss.SSSZ";

                NSDate *date = [NSDate fromString:dateString format:ISODateTimeMilliSec];
                NSDate *expectedDate = [LMUtils getDateFromString:dateString withFormat:format];

                [[date should] equal:expectedDate];
            });

        });

        context(@"to string", ^{

            it(@"return ISO Year", ^{
                NSString *expectedDateString = @"1991";
                NSString *format = @"yyyy";

                NSDate *date = [LMUtils getDateFromString:expectedDateString withFormat:format];

                NSString *dateString = [date toStringWithFormat:ISOYear];

                [[dateString should] equal:expectedDateString];
            });

            it(@"returns ISO YearMonth", ^{
                NSString *expectedDateString = @"1991-12";
                NSString *format = @"yyyy-MM";

                NSDate *date = [LMUtils getDateFromString:expectedDateString withFormat:format];

                NSString *dateString = [date toStringWithFormat:ISOYearMonth];

                [[dateString should] equal:expectedDateString];
            });

            it(@"returns ISO Date", ^{
                NSString *expectedDateString = @"1991-12-25";
                NSString *format = @"yyyy-MM-dd";

                NSDate *date = [LMUtils getDateFromString:expectedDateString withFormat:format];

                NSString *dateString = [date toStringWithFormat:ISODate];

                [[dateString should] equal:expectedDateString];
            });

        });
    });
SPEC_END



