//
//  SLPerson.m
//  RaiseManChallenge
//
//  Created by bindiry on 13-9-16.
//  Copyright (c) 2013年 bindiry. All rights reserved.
//

#import "SLPerson.h"

@implementation SLPerson

- (id)init
{
    self = [super init];
    if (self)
    {
        expectedRaise = 0.5;
        personName = @"New Person";
    }
    return self;
}

@synthesize personName;
@synthesize expectedRaise;



@end
