//
//  SLAppController.h
//  SpeakLine
//
//  Created by bindiry on 13-8-27.
//  Copyright (c) 2013年 bindiry. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SLAppController : NSObject<NSSpeechSynthesizerDelegate, NSTableViewDataSource, NSTableViewDelegate>
{
    IBOutlet NSTextField *textField;
    IBOutlet NSButton *startButton;
    IBOutlet NSButton *stopButton;
    IBOutlet NSTableView *tableView;
    NSArray *voiceList;
    NSSpeechSynthesizer *speechSynth;
}

- (IBAction)sayIt:(id)sender;
- (IBAction)stopIt:(id)sender;

@end
