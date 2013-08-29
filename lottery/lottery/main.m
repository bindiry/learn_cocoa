//
//  main.m
//  lottery
//
//  Created by bindiry on 13-8-11.
//  Copyright (c) 2013年 bindiry. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LotteryEntry.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // 创建数据对象
        NSCalendarDate *now = [[NSCalendarDate alloc] init];
        
        NSMutableArray *array;
        array = [[NSMutableArray alloc] init];
        int i;
        for (i = 0; i < 10; i++)
        {
            NSCalendarDate *iWeeksFormNow;
            iWeeksFormNow = [now dateByAddingYears:0
                                            months:0
                                              days:(i*7)
                                             hours:0
                                           minutes:0
                                           seconds:0];
            // 创建一个新的 LotteryEntry 实例
            LotteryEntry *newEntry = [[LotteryEntry alloc] initWithEntryDate:iWeeksFormNow];
            // 添加到数组中
            [array addObject:newEntry];
        }
        
        for (LotteryEntry *entryToPrint in array)
        {
            NSLog(@"%@", entryToPrint);
        }
        
    }
    return 0;
}

