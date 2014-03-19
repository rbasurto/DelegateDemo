//
//  DemoView.h
//  DelegateDemo
//
//  Created by Rene Alejandro Basurto Quijada on 18/03/14.
//  Copyright (c) 2014 Rene A Basurto Q. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DemoProtocol.h"

@interface DemoView : UIView

@property (nonatomic, weak) id <DemoProtocol> delegate;
@property (nonatomic) NSUInteger number;

- (id)initWithFrame:(CGRect)frame number:(NSUInteger)number;


@end
