//
//  LotteryEntry.h
//  lottery
//
//  Created by bindiry on 13-8-15.
//  Copyright (c) 2013年 bindiry. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LotteryEntry : NSObject {
    NSCalendarDate *entryDate;
    int firstNumber;
    int secondNumber;
}

- (id)initWithEntryDate:(NSCalendarDate *)date;
- (NSCalendarDate *)entryDate;
- (int)firstNumber;
- (int)secondNumber;

@end
