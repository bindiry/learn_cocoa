//
//  SLDocument.h
//  RaiseManChallenge
//
//  Created by bindiry on 13-9-16.
//  Copyright (c) 2013年 bindiry. All rights reserved.
//

#import <Cocoa/Cocoa.h>
@class SLPerson;

@interface SLDocument : NSDocument<NSTableViewDataSource, NSTableViewDelegate>
{
    NSMutableArray *employees;
    IBOutlet NSTableView *tableView;
}

- (IBAction)createEmployee:(id)sender;
- (IBAction)deleteSelectedEmployees:(id)sender;

@end
