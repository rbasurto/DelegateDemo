//
//  ViewController.m
//  DelegateDemo
//
//  Created by Rene Alejandro Basurto Quijada on 18/03/14.
//  Copyright (c) 2014 Rene A Basurto Q. All rights reserved.
//

#import "ViewController.h"
#import "ContainerView.h"
#import "DemoProtocol.h"
#import "DemoView.h"
#import "OtherDemoView.h"

@interface ViewController () <DemoProtocol>
@property (strong, nonatomic) IBOutlet ContainerView *containerView;
@property (weak, nonatomic) IBOutlet UILabel *labelDemo;
@property (weak, nonatomic) IBOutlet UILabel *labelDemoBis;
@end


@implementation ViewController

- (void)pickView:(UIView *)view
{
    self.labelDemo.text = [NSString stringWithFormat:@"View #%d",
                           ((DemoView *)view).number];
}

- (void)pickAnotherView:(UIView *)view
{
    self.labelDemoBis.text = [NSString stringWithFormat:@"Other View #%d",
                              ((DemoView *)view).number];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    [self prepareDelegates];
    [self prepareOtherDelegates];
}


- (void)prepareDelegates
{
    for (UIView *aview in self.view.subviews)
    {
        if ([aview isKindOfClass:[DemoView class]])
        {
            ((DemoView *)aview).delegate = self;
        }
    }
    
}

- (void)prepareOtherDelegates
{
    for (int i = 0; i < 5; i++) {
        OtherDemoView *odw = (OtherDemoView *)[_containerView viewWithTag:i + 1];
        odw.delegate = self;
    }

}


@end
