//
//  ViewController.h
//  swipeTest
//
//  Created by jiamao zheng on 7/6/15.
//  Copyright (c) 2015 jiamaozheng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *image;

- (IBAction)handleSwipe:(UIGestureRecognizer *)sender;

@end

