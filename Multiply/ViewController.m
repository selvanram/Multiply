//
//  ViewController.m
//  Multiply
//
//  Created by Vijay Ram on 10/5/14.
//  Copyright (c) 2014 Vijay R. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *sliderValue;
@property (weak, nonatomic) IBOutlet UITextField *numberTextField;
@property (weak, nonatomic) IBOutlet UILabel *answerLabel;
@property (weak, nonatomic) IBOutlet UISlider *mySlider;
@property (weak, nonatomic) IBOutlet UISegmentedControl *operandSegments;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)changeSlider:(id)sender {
    self.sliderValue.text = [NSString stringWithFormat:@"%i", (int)self.mySlider.value];
}


- (IBAction)onCalculateButtonPressed:(id)sender {
    int numberOne = [self.numberTextField.text intValue];
    int numberTwo = self.mySlider.value;
    int result;
    if(self.operandSegments.selectedSegmentIndex == 0)
    {
        result = numberOne + numberTwo;
        self.answerLabel.text = [self fizzBuzz:result];
        [self changeColor:result];
    }
    else if(self.operandSegments.selectedSegmentIndex == 1)
    {
        result = numberOne - numberTwo;
        self.answerLabel.text = [self fizzBuzz:result];
        [self changeColor:result];
    }
    if(self.operandSegments.selectedSegmentIndex == 2)
    {
        result = numberOne * numberTwo;
        self.answerLabel.text = [self fizzBuzz:result];
        [self changeColor:result];
    }
    if(self.operandSegments.selectedSegmentIndex == 3)
    {
        result = numberOne / numberTwo;
        self.answerLabel.text = [self fizzBuzz:result];
        [self changeColor:result];
    }
    [self.view endEditing:YES];
}

//Change Color Method
-(void)changeColor:(int)result
{
    if(result > 20)
    {
        self.view.backgroundColor = [UIColor greenColor];
    }
    else
    {
        self.view.backgroundColor = [UIColor whiteColor];
    }
}

-(NSString *)fizzBuzz:(int)result
{
    NSString *fizzBuzz =  [[NSString alloc]init];
    if((result%3==0) && (result%5!=0))
    {
        fizzBuzz = @"fizz";
    }
    else if((result%5==0) &&(result%3!=0))
    {
        fizzBuzz = @"buzz";
    }
    else if((result%5==0)&&(result%3==0))
    {
        fizzBuzz = @"fizzbuzz";
    }
    else{
        NSString *answer = [[NSString alloc] initWithFormat:@"%i", result];
        return answer;
    }
    return fizzBuzz;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
