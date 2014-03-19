//
//  DemoProtocol.h
//  DelegateDemo
//
//  Created by Rene Alejandro Basurto Quijada on 18/03/14.
//  Copyright (c) 2014 Rene A Basurto Q. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol DemoProtocol <NSObject>

- (void)pickView:(UIView *)view;
- (void)pickAnotherView:(UIView *)view;

@end
