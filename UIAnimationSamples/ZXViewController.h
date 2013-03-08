//
//  ZXViewController.h
//  UIAnimationSamples
//
//  Created by zhang andy on 13-3-8.
//  Copyright (c) 2013年 com.andy. All rights reserved.
//

#import <UIKit/UIKit.h>

//typedef enum{
//    kUIViewAnimationOptionCurveEaseIn,
//    kUIViewAnimationOptionCurveEaseInOut,
//    kUIViewAnimationOptionCurveEaseOut,
//    kUIViewAnimationOptionCurveLinear
//}AnimationType;
@interface ZXViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
{
    NSArray *_typeArray;
    int _selectType;
}

- (IBAction)moveTo:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UIButton *pickerButton;
@property (weak, nonatomic) IBOutlet UIImageView *arrowImage;
- (IBAction)transHere:(UIButton *)sender;
- (IBAction)pickerOut:(UIButton *)sender;
- (IBAction)HUDTap:(id)sender;

@end
