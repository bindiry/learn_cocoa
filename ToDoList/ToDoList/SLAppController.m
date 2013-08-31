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
    // 检查字符是否存在
    NSInteger index = [todoList indexOfObject:todoString];
    if (index == NSNotFound)
    {
        [todoList addObject:todoString];
        [tableView reloadData];
        [textField setStringValue:@""];
    }
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

- (void)tableView:(NSTableView *)atableView setObjectValue:(id)object forTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row
{
    [todoList replaceObjectAtIndex:row withObject:object];
    [tableView reloadData];
}

@end
