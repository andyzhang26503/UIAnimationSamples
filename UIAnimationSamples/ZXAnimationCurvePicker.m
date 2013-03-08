//
//  ZXAnimationCurvePicker.m
//  UIAnimationSamples
//
//  Created by zhang andy on 13-3-8.
//  Copyright (c) 2013年 com.andy. All rights reserved.
//

#import "ZXAnimationCurvePicker.h"

@implementation ZXAnimationCurvePicker

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/
+ (id)newAnimationCurvePicker:(id)pickDelegate
{
    UINib *nib = [UINib nibWithNibName:@"ZXAnimationCurvePicker" bundle:nil];
    NSArray *nibArray = [nib instantiateWithOwner:self options:nil];
    ZXAnimationCurvePicker *me = [nibArray objectAtIndex:0];
    me.animationlist.dataSource = pickDelegate;
    me.animationlist.delegate = pickDelegate;
    return me;
}

@end
