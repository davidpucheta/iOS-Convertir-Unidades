//
//  ViewController.m
//  ConvertirUnidades
//
//  Created by David Reyes Pucheta on 08/10/15.
//  Copyright © 2015 David Reyes Pucheta. All rights reserved.
//

#import "ViewController.h"

double convertToMm(double unitIn){
    double converted;
    converted = unitIn*25.4;
    return converted;
}

double convertToCm(double unitIn){
    double converted;
    converted = unitIn * 2.54;
    return converted;
}

double convertToMt(double unitIn){
    double converted;
    converted = unitIn*0.0254;
    return converted;
}

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *inputField;

@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentController;

@property (weak, nonatomic) IBOutlet UILabel *outputField;

@end

@implementation ViewController

- (IBAction)updateButton:(id)sender {
    NSMutableString *buf = [NSMutableString new];
    
    double userInput = [self.inputField.text doubleValue];
    
    if (self.segmentController.selectedSegmentIndex == 0) {
        double unitMmValue = convertToMm(userInput);
        [buf appendString: [@(unitMmValue) stringValue]];
    }
    else if (self.segmentController.selectedSegmentIndex == 1){
        double unitCmValue = convertToCm(userInput);
        [buf appendString: [@(unitCmValue) stringValue]];
    }
    else {
        double unitMtValue = convertToMt(userInput);
        [buf appendString: [@(unitMtValue) stringValue]];
    }
    
    self.outputField.text = buf;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
