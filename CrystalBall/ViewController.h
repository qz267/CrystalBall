//
//  ViewController.h
//  CrystalBall
//
//  Created by Zheng Qin on 7/23/13.
//  Copyright (c) 2013 Zheng Qin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
//- (IBAction)buttonPressed:(id)sender;
@property (strong, nonatomic) IBOutlet UILabel *predictionLabel;
@property (strong, nonatomic) NSArray *myArrary;
@property (strong, nonatomic) UIImageView *imageView;

-(void) makePrediction;

@end
