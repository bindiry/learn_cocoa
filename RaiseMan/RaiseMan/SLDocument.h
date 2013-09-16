//
//  SLDocument.h
//  RaiseMan
//
//  Created by bindiry on 13-9-12.
//  Copyright (c) 2013年 bindiry. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface SLDocument : NSDocument
{
    NSMutableArray *employees;
}

- (void)setEmployees:(NSMutableArray *)a;


@end
