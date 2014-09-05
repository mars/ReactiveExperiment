//
//  REXInterlockViewController.m
//  ReactiveExperiment
//
//  Created by Mars Hall on 2014-09-04.
//  Copyright (c) 2014 Substantial. All rights reserved.
//

#import "REXInterlockViewController.h"
#import <ReactiveCocoa/ReactiveCocoa.h>

@interface REXInterlockViewController ()

@end

@implementation REXInterlockViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    RACChannelTerminal *sliderATerminal = [self.interlockA rac_newValueChannelWithNilValue:0];
    RACChannelTerminal *sliderBTerminal = [self.interlockB rac_newValueChannelWithNilValue:0];
    [sliderATerminal subscribe:sliderBTerminal];
    [sliderBTerminal subscribe:sliderATerminal];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
