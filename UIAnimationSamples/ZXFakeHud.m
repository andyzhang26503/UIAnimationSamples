//
//  ZXFakeHud.m
//  UIAnimationSamples
//
//  Created by zhang andy on 13-3-8.
//  Copyright (c) 2013年 com.andy. All rights reserved.
//

#import "ZXFakeHud.h"

@implementation ZXFakeHud

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
+ (id)newFakeHUD
{
    NSArray *nibs = [[NSBundle mainBundle] loadNibNamed:@"ZXFakeHud" owner:nil options:nil];
    ZXFakeHud *hud = [nibs objectAtIndex:0];
    return hud;
}

- (IBAction)btnStop:(id)sender
{
    [self removeWithSinkAnimation:100];
}
@end
