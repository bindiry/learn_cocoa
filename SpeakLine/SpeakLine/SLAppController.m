//
//  SLAppController.m
//  SpeakLine
//
//  Created by bindiry on 13-8-27.
//  Copyright (c) 2013年 bindiry. All rights reserved.
//

#import "SLAppController.h"

@implementation SLAppController

- (id)init
{
    if (![super init])
        return nil;
    
    NSLog(@"init");
    
    speechSynth = [[NSSpeechSynthesizer alloc] initWithVoice:nil];
    [speechSynth setDelegate:self];
    voiceList = [NSSpeechSynthesizer availableVoices];
    return self;
}

- (IBAction)sayIt:(id)sender
{
    NSString *string = [textField stringValue];
    if ([string length] == 0) {
        NSLog(@"string from %@ is of zero-length", textField);
        return;
    }
    [speechSynth startSpeakingString:string];
    NSLog(@"Have started to say: %@", string);
    [stopButton setEnabled:YES];
    [startButton setEnabled:NO];
    [tableView setEnabled:NO];
}

- (IBAction)stopIt:(id)sender
{
    NSLog(@"stopping");
    [speechSynth stopSpeaking];
    [stopButton setEnabled:NO];
    [startButton setEnabled:YES];
    [tableView setEnabled:YES];
}

- (void)speechSynthesizer:(NSSpeechSynthesizer *)sender didFinishSpeaking:(BOOL)finishedSpeaking
{
    NSLog(@"complete = %d", finishedSpeaking);
    [stopButton setEnabled:NO];
    [startButton setEnabled:YES];
    [tableView setEnabled:YES];
}

- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView
{
    return [voiceList count];
}

- (id)tableView:(NSTableView *)tableView objectValueForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row
{
    NSString *name = [voiceList objectAtIndex:row];
    return name;
}

- (void)tableViewSelectionDidChange:(NSNotification *)notification
{
    NSInteger row = [notification.object selectedRow];
    NSLog(@"row = %ld", (long)row);
    if (row == -1)
    {
        return;
    }
    NSString *selectedVoice = [voiceList objectAtIndex:row];
    [speechSynth setVoice:selectedVoice];
    NSLog(@"new voice = %@", selectedVoice);
}

- (BOOL)tableView:(NSTableView *)tableView shouldSelectRow:(NSInteger)row
{
    return YES;
}

- (void)awakeFromNib
{
    NSString *defaultVoice = [NSSpeechSynthesizer defaultVoice];
    NSLog(@"defaultVoice = %@", defaultVoice);
    NSUInteger defaultRow = [voiceList indexOfObject:defaultVoice];
    [tableView selectRowIndexes:[NSIndexSet indexSetWithIndex:defaultRow] byExtendingSelection:NO];
    [tableView scrollRowToVisible:defaultRow];
    
}

@end
