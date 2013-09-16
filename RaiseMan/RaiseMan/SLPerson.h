//
//  SLPerson.h
//  RaiseMan
//
//  Created by bindiry on 13-9-12.
//  Copyright (c) 2013年 bindiry. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SLPerson : NSObject
{
    NSString *personName;
    float expctedRaise;
}

@property (readwrite, copy) NSString *personName;
@property (readwrite) float expctedRaise;

@end
