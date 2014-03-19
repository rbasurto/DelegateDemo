//
//  ContainerView.m
//  DelegateDemo
//
//  Created by Rene Alejandro Basurto Quijada on 18/03/14.
//  Copyright (c) 2014 Rene A Basurto Q. All rights reserved.
//

#import "ContainerView.h"
#import "DemoView.h"
#import "OtherDemoView.h"

@implementation ContainerView

- (id)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        [self setup];
    }
    return self;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setup];
    }
    return self;
}

- (void)setup
{
    CGRect rect = CGRectMake(0.0, 0.0, 30.0, 30.0);
    for (int i = 0; i < 5; i++) {
        DemoView *dv = [[DemoView alloc] initWithFrame:rect number: i + 1];
        dv.center = CGPointMake(50.0, 45.0 * (i + 1));
        dv.backgroundColor = [UIColor grayColor];
        [self addSubview:dv];
    }
    
    for (int i = 0; i < 5; i++) {
        OtherDemoView *odv = [[OtherDemoView alloc] initWithFrame:rect number: i + 1];
        odv.center = CGPointMake(150.0, 45.0 * (i + 1));
        odv.backgroundColor = [UIColor yellowColor];
        odv.tag = i + 1;
        [self addSubview:odv];
    }
    

}

@end
