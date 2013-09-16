//
//  SLPerson.m
//  RaiseMan
//
//  Created by bindiry on 13-9-12.
//  Copyright (c) 2013年 bindiry. All rights reserved.
//

#import "SLPerson.h"

@implementation SLPerson

- (id)init
{
    self = [super init];
    if (self == nil)
    {
        return nil;
    }
    
    expctedRaise = 5.0;
    personName = @"New Person";
    return self;
}

@synthesize personName;
@synthesize expctedRaise;

- (void)setNilValueForKey:(NSString *)key
{
    if ([key isEqual:@"expectedRaise"])
    {
        [self setExpctedRaise: 0.0];
    }
    else
    {
        [super setNilValueForKey:key];
    }
}

@end
