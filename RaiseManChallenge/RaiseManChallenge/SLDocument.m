//
//  SLDocument.m
//  RaiseManChallenge
//
//  Created by bindiry on 13-9-16.
//  Copyright (c) 2013年 bindiry. All rights reserved.
//

#import "SLDocument.h"
#import "SLPerson.h"

@implementation SLDocument

- (id)init
{
    self = [super init];
    if (self) {
        employees = [[NSMutableArray alloc] init];
    }
    return self;
}

- (NSString *)windowNibName
{
    // Override returning the nib file name of the document
    // If you need to use a subclass of NSWindowController or if your document supports multiple NSWindowControllers, you should remove this method and override -makeWindowControllers instead.
    return @"SLDocument";
}

- (void)windowControllerDidLoadNib:(NSWindowController *)aController
{
    [super windowControllerDidLoadNib:aController];
    // Add any code here that needs to be executed once the windowController has loaded the document's window.
}

+ (BOOL)autosavesInPlace
{
    return YES;
}

- (NSData *)dataOfType:(NSString *)typeName error:(NSError **)outError
{
    // Insert code here to write your document to data of the specified type. If outError != NULL, ensure that you create and set an appropriate error when returning nil.
    // You can also choose to override -fileWrapperOfType:error:, -writeToURL:ofType:error:, or -writeToURL:ofType:forSaveOperation:originalContentsURL:error: instead.
    NSException *exception = [NSException exceptionWithName:@"UnimplementedMethod" reason:[NSString stringWithFormat:@"%@ is unimplemented", NSStringFromSelector(_cmd)] userInfo:nil];
    @throw exception;
    return nil;
}

- (BOOL)readFromData:(NSData *)data ofType:(NSString *)typeName error:(NSError **)outError
{
    // Insert code here to read your document from the given data of the specified type. If outError != NULL, ensure that you create and set an appropriate error when returning NO.
    // You can also choose to override -readFromFileWrapper:ofType:error: or -readFromURL:ofType:error: instead.
    // If you override either of these, you should also override -isEntireFileLoaded to return NO if the contents are lazily loaded.
    NSException *exception = [NSException exceptionWithName:@"UnimplementedMethod" reason:[NSString stringWithFormat:@"%@ is unimplemented", NSStringFromSelector(_cmd)] userInfo:nil];
    @throw exception;
    return YES;
}

- (IBAction)deleteSelectedEmployees:(id)sender
{
    // 选中了哪一行
    NSIndexSet *rows = [tableView selectedRowIndexes];
    // 有不有选中行？
    if ([rows count] == 0)
    {
        NSBeep();
        return;
    }
    [employees removeObjectsAtIndexes:rows];
    [tableView reloadData];
}

- (IBAction)createEmployee:(id)sender
{
    SLPerson *newEmployee = [[SLPerson alloc] init];
    [employees addObject:newEmployee];
    [tableView reloadData];
}

- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView
{
    return [employees count];
}

- (id)tableView:(NSTableView *)aTableView objectValueForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row
{
    // 列的 identifier 是什么？
    NSString *identifier = [tableColumn identifier];
    
    // 哪个人？
    SLPerson *person = [employees objectAtIndex:row];
    
    // person 的 identifier 属性值是什么？
    return [person valueForKey:identifier];
}

- (void)tableView:(NSTableView *)aTableView setObjectValue:(id)object forTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row
{
    NSString *identifier = [tableColumn identifier];
    SLPerson *person = [employees objectAtIndex:row];
    
    // 设置 identifier 属性的值
    [person setValue:object forKey:identifier];
}

- (void)tableView:(NSTableView *)aTableView sortDescriptorsDidChange:(NSArray *)oldDescriptors
{
    NSLog(@"identifier");
    NSArray *newDescriptors = [tableView sortDescriptors];
    [employees sortUsingDescriptors:newDescriptors];
    [aTableView reloadData];
}

@end
