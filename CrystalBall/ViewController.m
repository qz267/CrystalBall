//
//  ViewController.m
//  CrystalBall
//
//  Created by Zheng Qin on 7/23/13.
//  Copyright (c) 2013 Zheng Qin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize predictionLabel;
@synthesize myArrary;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    UIImage *image = [UIImage imageNamed:@"background.png"];
    UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
    [self.view insertSubview:imageView atIndex:0];
    
    self.myArrary = [[NSArray alloc] initWithObjects:@"Apple", @"Orange", @"Banana", @"Plum", nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed:(id)sender {
//    NSLog(@"button pressed");
//    NSString *myString = @"hahahaha";
//    [myString uppercaseString];
    
    
//    NSArray *myArrary =[[NSArray alloc initWithObjects:@"Apple", @"Orange", @"Banana", @"Plum", nil];
    NSInteger index = arc4random_uniform(self.myArrary.count);
    self.predictionLabel.text = [self.myArrary objectAtIndex:index];
}

- (void) motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event{
    NSLog(@"motion began");
    self.predictionLabel.text = @"";
}

- (void) motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event{
    if (motion == UIEventSubtypeMotionShake) {
        NSInteger index = arc4random_uniform(self.myArrary.count);
        self.predictionLabel.text = [self.myArrary objectAtIndex:index];
    }
}

- (void) motionCancelled:(UIEventSubtype)motion withEvent:(UIEvent *)event{
    
}

@end
