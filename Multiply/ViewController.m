//
//  ViewController.m
//  Multiply
//
//  Created by Vijay Ram on 10/5/14.
//  Copyright (c) 2014 Vijay R. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *numberTextField;
@property (weak, nonatomic) IBOutlet UILabel *multiplierLabel;
@property (weak, nonatomic) IBOutlet UILabel *answerLabel;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)onCalculateButtonPressed:(id)sender
{
    
    int result;
    int numStorage;
    int multStorage;
    numStorage = [self.numberTextField.text intValue];
    multStorage = [self.multiplierLabel.text intValue];
    result = numStorage * multStorage;
    self.answerLabel.text = [NSString stringWithFormat:@"%i", result];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
