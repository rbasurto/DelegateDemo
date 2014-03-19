//
//  DemoView.m
//  DelegateDemo
//
//  Created by Rene Alejandro Basurto Quijada on 18/03/14.
//  Copyright (c) 2014 Rene A Basurto Q. All rights reserved.
//

#import "DemoView.h"

@implementation DemoView {
    UILabel *_labelNumber;
}

- (id)initWithFrame:(CGRect)frame number:(NSUInteger)number
{
    self = [super initWithFrame:frame];
    if (self) {
        _number = number;
        [self setup];
    }
    return self;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    self.backgroundColor = [UIColor blueColor];
    self.alpha = 0.4;
}


- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    self.backgroundColor = [UIColor grayColor];
    self.alpha = 1.0;
    
    if ([self.delegate respondsToSelector:@selector(pickView:)]) {
        [self.delegate pickView:self];
    }
}

- (void)setup
{
    _labelNumber = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, 20)];
    [_labelNumber setBackgroundColor:[UIColor clearColor]];
    [_labelNumber setOpaque:NO];
    [_labelNumber setCenter:(CGPointMake)(self.frame.size.width/2,self.frame.size.height/2)];
    _labelNumber.textAlignment = NSTextAlignmentCenter;
    _labelNumber.text = [NSString stringWithFormat:@"%lu", (unsigned long)self.number];

    [self addSubview:_labelNumber];
}

@end
