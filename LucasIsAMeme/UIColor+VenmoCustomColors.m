//
//  UIColor+VenmoCustomColors.m
//  DSSPaymentForm
//
//  Created by dasmer on 1/15/14.
//  Copyright (c) 2014 Columbia University. All rights reserved.
//

#import "UIColor+VenmoCustomColors.h"

@implementation UIColor (VenmoCustomColors)

+ (UIColor *) venmoStandardColor{
    CGFloat red = 61.0f/256.0f;
    CGFloat green = 149.0f/256.0f;
    CGFloat blue = 206.0f/256.0f;

    return [UIColor colorWithRed:red green:green blue:blue alpha:1.0f];
}

@end
