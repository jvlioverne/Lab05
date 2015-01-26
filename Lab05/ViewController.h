//
//  ViewController.h
//  Lab05
//
//  Created by Benjas on 23/01/15.
//  Copyright (c) 2015 Benjas. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIButton *btnColor;

@property (strong, nonatomic) IBOutlet UILabel *lblRed;
@property (strong, nonatomic) IBOutlet UILabel *lblGreen;
@property (strong, nonatomic) IBOutlet UILabel *lblBlue;



@property (strong, nonatomic) IBOutlet UISlider *sldRed;
@property (strong, nonatomic) IBOutlet UISlider *sldGreen;
@property (strong, nonatomic) IBOutlet UISlider *sldBlue;

@property (strong, nonatomic) IBOutlet UISlider *sldBlink;

@property (strong, nonatomic) IBOutlet UILabel *lblBlink;
@property (strong, nonatomic) NSTimer *timer;


@end

