//
//  ViewController.m
//  swipeTest
//
//  Created by jiamao zheng on 7/6/15.
//  Copyright (c) 2015 jiamaozheng. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
  int imageIndex = 4;
- (IBAction)handleSwipe:(UIGestureRecognizer *)sender {
    NSLog(@"Swiped");
    
    NSArray *image = [[NSArray alloc]initWithObjects:@"1.jpg", @"2.jpg", @"3.jpg", @"4.jpg", @"5.jpg", nil];
    
    UISwipeGestureRecognizerDirection direction = [(UISwipeGestureRecognizer *)sender direction];
    switch (direction) {
        case UISwipeGestureRecognizerDirectionLeft:
            imageIndex++;
            break;
            
         case UISwipeGestureRecognizerDirectionRight:
            imageIndex--;
            break;
            
        default:
            break;
    }
    
    imageIndex = (imageIndex <0) ? ([image count] -1): imageIndex % [image count];
    self.image.image = [UIImage imageNamed:[image objectAtIndex:imageIndex]];
    
    
}
@end
