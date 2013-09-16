//
//  SLPerson.h
//  RaiseManChallenge
//
//  Created by bindiry on 13-9-16.
//  Copyright (c) 2013年 bindiry. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SLPerson : NSObject
{
    NSString *personName;
    float expectedRaise;
}

@property (readwrite, copy) NSString *personName;
@property (readwrite) float expectedRaise;
@end
