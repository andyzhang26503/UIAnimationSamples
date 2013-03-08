//
//  ZXViewController.m
//  UIAnimationSamples
//
//  Created by zhang andy on 13-3-8.
//  Copyright (c) 2013年 com.andy. All rights reserved.
//

#import "ZXViewController.h"
#import "UIView+Animation.h"
#import "ZXAnimationCurvePicker.h"
#import "ZXFakeHud.h"
static int curveValues[] = {
    UIViewAnimationOptionCurveEaseIn,
    UIViewAnimationOptionCurveEaseInOut,
    UIViewAnimationOptionCurveEaseOut,
    UIViewAnimationOptionCurveLinear
};
@interface ZXViewController ()

@end

@implementation ZXViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    _typeArray = [NSArray arrayWithObjects:@"EaseInOut",@"EaseIn",@"EaseOut",@"Linear", nil];

	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)moveTo:(UIButton *)sender {
    CGPoint moveToPoint = CGPointMake(sender.frame.origin.x, sender.frame.origin.y-self.arrowImage.frame.size.height);
    [self.arrowImage moveTo:moveToPoint duration:1 option:UIViewAnimationOptionTransitionCrossDissolve];
}
- (IBAction)transHere:(UIButton *)sender {
    [self.arrowImage downUnder:1.0 option:UIViewAnimationOptionTransitionCurlUp];
}

- (IBAction)pickerOut:(UIButton *)sender {
//    UIPickerView *picker = [[UIPickerView alloc] init];
//    [self.view addSubviewWithZoomInAnimation:picker duration:0.5 option:UIViewAnimationOptionTransitionCurlUp];
    ZXAnimationCurvePicker *picker = [ZXAnimationCurvePicker newAnimationCurvePicker:self];
    picker.center = self.pickerButton.center;
    
    [self.view addSubviewWithZoomInAnimation:picker duration:0.5 option:curveValues[_selectType]];
}

- (IBAction)HUDTap:(id)sender {
    ZXFakeHud *hudView = [ZXFakeHud newFakeHUD];
    [self.view addSubviewWithFadeAnimation:hudView duration:1.0 option:curveValues[_selectType]];
    
}

- (int)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _typeArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    
    cell.textLabel.text = [_typeArray objectAtIndex:indexPath.row];
    if (_selectType == indexPath.row ) {
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    }else{
        cell.accessoryType = UITableViewCellAccessoryNone;
    }
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    [tableView cellForRowAtIndexPath:indexPath].accessoryType = UITableViewCellAccessoryCheckmark;
    _selectType = indexPath.row;
    [tableView reloadData];
    [tableView.superview removeSubviewWithZoomOutAnimation:1.0 option:curveValues[_selectType]];
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
	return @"Select the Animation Curve to be used";
}

- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section
{
	return @"Curves will not affect total duration but instant speed and acceleration";
}
@end
