//
//  InstatwitViewController.m
//  InstaTwit
//
//  Created by Михаил Помахин on 19.07.14.
//  Copyright (c) 2014 Михаил Помахин. All rights reserved.
//

#import "InstatwitViewController.h"

@interface InstatwitViewController ()

@end

@implementation InstatwitViewController
@synthesize tweetPicker;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    activities = [[NSArray alloc] initWithObjects: @"sleeping", @"eating", @"working", @"thinking", @"crying", @"begging", @"leaving", @"shopping", @"hello worlding", nil];
    feelings = [[NSArray alloc] initWithObjects: @"awesome", @"sad", @"happy", @"ambivalent", @"nauseus", @"psyched", @"confused", @"hopeful", @"anxious", nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 2;
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    switch (component)
    {
        case 0:
            return [activities objectAtIndex:row];
            break;
        case 1:
            return [feelings objectAtIndex:row];
            
        default:
            return nil;
            break;
    }
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    if (component == 0)
    {
        return [activities count];
    }
    else
    {
        return [feelings count];
    }
}

- (void)dealloc
{
    [activities release];
    [feelings release];
    [tweetPicker release];
    [super dealloc];
}

- (IBAction) sendButtonTapped: (id) sender
{
    NSString *themessage = [NSString stringWithFormat:@"I'm %@ and feeling %@ about it.",
                            [activities objectAtIndex:[tweetPicker selectedRowInComponent:0]],
                            [feelings objectAtIndex:[tweetPicker selectedRowInComponent:1]] ];
    
    NSLog(themessage);
}
@end
