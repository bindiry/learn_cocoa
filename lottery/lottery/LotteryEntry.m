//
//  LotteryEntry.m
//  lottery
//
//  Created by bindiry on 13-8-15.
//  Copyright (c) 2013年 bindiry. All rights reserved.
//

#import "LotteryEntry.h"

@implementation LotteryEntry

- (id) init
{
    return [self initWithEntryDate:[NSCalendarDate calendarDate]];
}

- (id) initWithEntryDate:(NSCalendarDate *)newDate
{
    self = [super init];
    if (self != nil)
    {
        entryDate = newDate;
        firstNumber = random() % 100 + 1;
        secondNumber = random() % 100 + 1;
    }
    return self;
}

- (NSCalendarDate *)entryDate
{
    return entryDate;
}

- (int)firstNumber
{
    return firstNumber;
}

- (int)secondNumber
{
    return secondNumber;
}

- (NSString *)description
{
    NSString *result = [[NSString alloc] initWithFormat:@"%@ = %d and %d",
                       [entryDate descriptionWithCalendarFormat:@"%b %d %Y"],
                       firstNumber, secondNumber
                       ];
    return result;
}

- (void)dealloc
{
    NSLog(@"deallocing %@", self);
}

@end
