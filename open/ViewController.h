//
//  ViewController.h
//  open
//
//  Created by O_Sher on 10.11.14.
//  Copyright (c) 2014 OSher. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *label;
- (IBAction)button:(id)sender;
@property (weak, nonatomic) IBOutlet UIImageView *heart;
@property (weak, nonatomic) IBOutlet UILabel *refreshLabel;

@end
