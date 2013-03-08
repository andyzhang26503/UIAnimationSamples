//
//  UIView+Animation.h
//  UIAnimationSamples
//
//  Created by zhang andy on 13-3-8.
//  Copyright (c) 2013年 com.andy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Animation)

- (void)moveTo:(CGPoint)destination duration:(float)secs option:(UIViewAnimationOptions)option;
- (void)downUnder:(float)secs option:(UIViewAnimationOptions)option;

- (void)addSubviewWithZoomInAnimation:(UIView *)view duration:(float)secs option:(UIViewAnimationOptions)option;
- (void)removeSubviewWithZoomOutAnimation:(float)secs option:(UIViewAnimationOptions)option;

- (void) addSubviewWithFadeAnimation:(UIView*)view duration:(float)secs option:(UIViewAnimationOptions)option;
- (void) removeWithSinkAnimation:(int)steps;
- (void) removeWithSinkAnimationRotateTimer:(NSTimer*) timer;
@end
