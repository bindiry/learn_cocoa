//
//  SLAppController.m
//  ToDoList
//
//  Created by bindiry on 13-8-29.
//  Copyright (c) 2013年 bindiry. All rights reserved.
//

#import "SLAppController.h"

@implementation SLAppController

- (id)init
{
    if (![super init])
        return nil;
    
    NSLog(@"init");
    
    todoList = [[NSMutableArray alloc] init];
    
    return self;
}

- (IBAction)addToList:(id)sender
{
    NSString *todoString = [textField stringValue];
    if (todoString == nil) return;
    
    [todoList addObject:todoString];
    [tableView reloadData];
}

- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView
{
    return [todoList count];
}

- (id)tableView:(NSTableView *)tableView objectValueForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row
{
    NSString *todoString = [todoList objectAtIndex:row];
    return todoString;
}

@end
