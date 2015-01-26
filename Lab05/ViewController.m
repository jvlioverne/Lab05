//
//  ViewController.m
//  Lab05
//
//  Created by Benjas on 23/01/15.
//  Copyright (c) 2015 Benjas. All rights reserved.
//

#import "ViewController.h"
float r,g,b = 0;
//int t=5;


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
   self.btnColor.backgroundColor = [UIColor colorWithRed: r /255 green:g/255 blue:b/255 alpha:1];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)sldRValueChanged:(id)sender {

   
    r=self.sldRed.value;
    self.btnColor.backgroundColor = [UIColor colorWithRed: r/255 green:g/255 blue:b/255 alpha:1];
    self.lblRed.text =  [NSString stringWithFormat:@"%d", (int)self.sldRed.value];
    
}

- (IBAction)sldGValueChanged:(id)sender {

    g=self.sldGreen.value;
    self.btnColor.backgroundColor = [UIColor colorWithRed: r/255 green:g/255 blue:b/255 alpha:1];
    self.lblGreen.text =  [NSString stringWithFormat:@"%d", (int)self.sldGreen.value];

    
}

- (IBAction)sldBValueChanged:(id)sender {
  
    b=self.sldBlue.value;
    self.btnColor.backgroundColor = [UIColor colorWithRed: r/255 green:g/255 blue:b/255 alpha:1];
    self.lblBlue.text =  [NSString stringWithFormat:@"%d", (int)self.sldBlue.value];

    
}

- (IBAction)sldBlinkValueChanged:(id)sender {
    
    self.timer = [NSTimer scheduledTimerWithTimeInterval:(int)self.sldBlink.value target:self selector:@selector(toggleLabelAlpha) userInfo:nil repeats:YES];
    
    self.lblBlink.text = [NSString stringWithFormat:@"%d", (int)self.sldBlink.value];
}


-(void)toggleLabelAlpha {
    [self.btnColor setHidden:(!self.btnColor.hidden)];
}

@end
