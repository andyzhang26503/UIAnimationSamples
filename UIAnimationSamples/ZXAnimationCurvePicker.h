//
//  ZXAnimationCurvePicker.h
//  UIAnimationSamples
//
//  Created by zhang andy on 13-3-8.
//  Copyright (c) 2013年 com.andy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZXAnimationCurvePicker : UIView

@property (weak, nonatomic) IBOutlet UITableView *animationlist;
+ (id)newAnimationCurvePicker:(id)pickDelegate;
@end
