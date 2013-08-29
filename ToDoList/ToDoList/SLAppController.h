//
//  SLAppController.h
//  ToDoList
//
//  Created by bindiry on 13-8-29.
//  Copyright (c) 2013年 bindiry. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SLAppController : NSObject<NSTableViewDataSource, NSTableViewDelegate>
{
    IBOutlet NSTextField *textField;
    IBOutlet NSButton *addButton;
    IBOutlet NSTableView *tableView;
    
    NSMutableArray *todoList;
}

- (IBAction)addToList:(id)sender;


@end
