//
//  SLAppController.m
//  ResizeWindow
//
//  Created by bindiry on 13-8-29.
//  Copyright (c) 2013年 bindiry. All rights reserved.
//

#import "SLAppController.h"

@implementation SLAppController

- (NSSize)windowWillResize:(NSWindow *)sender toSize:(NSSize)frameSize
{
    NSSize mySize;
    mySize.height = frameSize.height;
    mySize.width = mySize.height * 2;
    return mySize;
}

@end
