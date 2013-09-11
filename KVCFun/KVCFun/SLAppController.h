//
//  SLAppController.h
//  KVCFun
//
//  Created by bindiry on 13-9-6.
//  Copyright (c) 2013年 bindiry. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SLAppController : NSObject
{
    int fido;
}

@property(readwrite, assign) int fido;

- (IBAction)incrementFido:(id)sender;

@end
