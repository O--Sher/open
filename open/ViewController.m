//
//  ViewController.m
//  open
//
//  Created by O_Sher on 10.11.14.
//  Copyright (c) 2014 OSher. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () {
BOOL needRefresh;
}
@end

@implementation ViewController

- (void)viewDidLoad
{
    self.refreshLabel.text = @"";
    needRefresh = NO;
    self.label.text = @"Tap the button";
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)button:(id)sender {
    if (needRefresh == YES) {
        [self refresh];
    }
    else {
        [self.heart setImage:[UIImage imageNamed:@"heart"]];
        self.label.text = @"В + О";
        needRefresh = YES;
        self.refreshLabel.text = @"Refresh";
    }
}

-(void) refresh {
    needRefresh = NO;
    [self.heart setImage:nil];
    self.label.text = @"Tap the button";
    self.refreshLabel.text = @"";
}
@end
