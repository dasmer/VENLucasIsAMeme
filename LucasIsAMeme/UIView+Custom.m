//
//  UIView+Custom.m
//  LucasIsAMeme
//
//  Created by dasmer on 1/27/14.
//  Copyright (c) 2014 Columbia University. All rights reserved.
//

#import "UIView+Custom.h"
#import <QuartzCore/QuartzCore.h>


@implementation UIView (Custom)


- (UIImage *) imageRepresentation
{
    UIGraphicsBeginImageContextWithOptions(self.bounds.size, self.opaque, 0.0);
    [self.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage * image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}



@end
