//
//  SLAppController.m
//  KVCFun
//
//  Created by bindiry on 13-9-6.
//  Copyright (c) 2013年 bindiry. All rights reserved.
//

#import "SLAppController.h"

@implementation SLAppController

- (id)init
{
    self = [super init];
    if (self == nil)
    {
        return nil;
    }
    
    [self setValue:[NSNumber numberWithInt:5] forKey:@"fido"];
    NSNumber *n = [self valueForKey:@"fido"];
    NSLog(@"fido = %@", n);
    return self;
}

@synthesize fido;

- (void)incrementFido:(id)sender
{
    // 方法1
//    [self willChangeValueForKey:@"fido"];
//    fido++;
//    NSLog(@"fido is now %d", fido);
//    [self didChangeValueForKey:@"fido"];
    
    // 方法2
//    NSNumber *n = [self valueForKey:@"fido"];
//    NSNumber *npp = [NSNumber numberWithInt:[n intValue] + 1];
//    [self setValue:npp forKey:@"fido"];
    
    // 方法3，使用存取方法来改变fido的值
//    [self setFido:[self fido] + 1];
    
    // 方法3的另一个语法
    self.fido += 1;
}

@end
