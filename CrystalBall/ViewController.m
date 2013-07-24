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
@synthesize imageView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    UIImage *image = [UIImage imageNamed:@"background.png"];
    self.imageView = [[UIImageView alloc] initWithImage:image];
    [self.view insertSubview:self.imageView atIndex:0];
    
    self.imageView.animationImages = [[NSArray alloc] initWithObjects:
                                      [UIImage imageNamed:@"cball00001.png"],
                                      [UIImage imageNamed:@"cball00002.png"],
                                      [UIImage imageNamed:@"cball00003.png"],
                                      [UIImage imageNamed:@"cball00004.png"],
                                      [UIImage imageNamed:@"cball00005.png"],
                                      [UIImage imageNamed:@"cball00006.png"],
                                      [UIImage imageNamed:@"cball00007.png"],
                                      [UIImage imageNamed:@"cball00008.png"],
                                      [UIImage imageNamed:@"cball00009.png"],
                                      [UIImage imageNamed:@"cball00010.png"],
                                      [UIImage imageNamed:@"cball00011.png"],
                                      [UIImage imageNamed:@"cball00012.png"],
                                      [UIImage imageNamed:@"cball00013.png"],
                                      [UIImage imageNamed:@"cball00014.png"],
                                      [UIImage imageNamed:@"cball00015.png"],
                                      [UIImage imageNamed:@"cball00016.png"],
                                      [UIImage imageNamed:@"cball00017.png"],
                                      [UIImage imageNamed:@"cball00018.png"],
                                      [UIImage imageNamed:@"cball00019.png"],
                                      [UIImage imageNamed:@"cball00020.png"],
                                      [UIImage imageNamed:@"cball00021.png"],
                                      [UIImage imageNamed:@"cball00022.png"],
                                      [UIImage imageNamed:@"cball00023.png"],
                                      [UIImage imageNamed:@"cball00024.png"],
                                      nil];
    
    self.imageView.animationDuration = 1.0;
    self.imageView.animationRepeatCount = 1;
    
    self.myArrary = [[NSArray alloc] initWithObjects:@"Apple", @"Orange", @"Banana", @"Plum", nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//- (IBAction)buttonPressed:(id)sender {
////    NSLog(@"button pressed");
////    NSString *myString = @"hahahaha";
////    [myString uppercaseString];
//    
//    
////    NSArray *myArrary =[[NSArray alloc initWithObjects:@"Apple", @"Orange", @"Banana", @"Plum", nil];
//    NSInteger index = arc4random_uniform(self.myArrary.count);
//    self.predictionLabel.text = [self.myArrary objectAtIndex:index];
//}


- (void) makePrediction{
    NSInteger index = arc4random_uniform(self.myArrary.count);
    self.predictionLabel.text = [self.myArrary objectAtIndex:index];
    [self.imageView startAnimating];
    [UIView animateWithDuration:2.0 animations:^{
        [self.predictionLabel setAlpha:1.0];
    }];
}


- (BOOL) canBecomeFirstResponder{
    return YES;
}

- (void) motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event{
    NSLog(@"motion began");
    self.predictionLabel.text = nil;
//    self.predictionLabel.text
    [self.predictionLabel setAlpha:0.0];
}

- (void) motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event{
    if (motion == UIEventSubtypeMotionShake) {
        [self makePrediction];
    }
}

- (void) motionCancelled:(UIEventSubtype)motion withEvent:(UIEvent *)event{
    
}

- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    self.predictionLabel.text = nil;
    [self.predictionLabel setAlpha:0.0];
}

- (void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
//    NSInteger index = arc4random_uniform(self.myArrary.count);
//    self.predictionLabel.text = [self.myArrary objectAtIndex:index];
    [self makePrediction];
}

@end
