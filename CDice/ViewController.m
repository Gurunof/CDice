//
//  ViewController.m
//  CDice
//
//  Created by Dmitry on 2/3/15.
//  Copyright (c) 2015 free. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){

    NSString *numValue;
    NSString *numValue1;
    NSString *numValue2;
    NSString *dataToSend;
    NSString *dataDop;
    NSString *dataChar;
    bool random1;
    bool random2;
}

@end

@implementation ViewController

- (void)startValuse{
    random1=YES;
    random2=YES;
    dataChar = @"c";
    dataToSend = @"";
    dataDop= @"";
    numValue = @"";
    numValue1 = @"";
    numValue2 = @"";
    self.disconnect.alpha=0;
}

#pragma mark - ToSend

-(void) makeDataToSend{
    
    dataToSend = [NSString stringWithFormat:@"%@%@%@",dataChar,numValue,dataDop];
    self.labelText.text = dataToSend;
    
    
   // [m_textChat postMessage:dataToSend];
}

#pragma mark - ResetKubikColor
-(void)resetColorBtn1{
    random1=NO;
    
    UIImage *btnImage = [UIImage imageNamed:@"11.png"];
    [self.butnum11 setBackgroundImage:btnImage forState:UIControlStateNormal];
    btnImage = [UIImage imageNamed:@"12.png"];
    [self.butnum12 setBackgroundImage:btnImage forState:UIControlStateNormal];
    btnImage = [UIImage imageNamed:@"13.png"];
    [self.butnum13 setBackgroundImage:btnImage forState:UIControlStateNormal];
    btnImage = [UIImage imageNamed:@"14.png"];
    [self.butnum14 setBackgroundImage:btnImage forState:UIControlStateNormal];
    btnImage = [UIImage imageNamed:@"15.png"];
    [self.butnum15 setBackgroundImage:btnImage forState:UIControlStateNormal];
    btnImage = [UIImage imageNamed:@"16.png"];
    [self.butnum16 setBackgroundImage:btnImage forState:UIControlStateNormal];
}

-(void)resetColorBtn2{
    random2=NO;
    
    UIImage *btnImage = [UIImage imageNamed:@"11.png"];
    [self.butnum21 setBackgroundImage:btnImage forState:UIControlStateNormal];
    btnImage = [UIImage imageNamed:@"12.png"];
    [self.butnum22 setBackgroundImage:btnImage forState:UIControlStateNormal];
    btnImage = [UIImage imageNamed:@"13.png"];
    [self.butnum23 setBackgroundImage:btnImage forState:UIControlStateNormal];
    btnImage = [UIImage imageNamed:@"14.png"];
    [self.butnum24 setBackgroundImage:btnImage forState:UIControlStateNormal];
    btnImage = [UIImage imageNamed:@"15.png"];
    [self.butnum25 setBackgroundImage:btnImage forState:UIControlStateNormal];
    btnImage = [UIImage imageNamed:@"16.png"];
    [self.butnum26 setBackgroundImage:btnImage forState:UIControlStateNormal];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self startValuse];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)butNum11:(id)sender {
    numValue1=@"1";
    UIImage *btnImage = [UIImage imageNamed:@"21.png"];
    [self resetColorBtn1];
    numValue = [NSString stringWithFormat:@"%@%@",numValue1,numValue2];
    //self.labelText.text=[NSString stringWithFormat:@"%@ %@",numValue1,numValue2];
    [self.butnum11 setBackgroundImage:btnImage forState:UIControlStateNormal];
}

- (IBAction)butNum12:(id)sender {
    numValue1=@"2";
    UIImage *btnImage = [UIImage imageNamed:@"22.png"];
    [self resetColorBtn1];
    numValue = [NSString stringWithFormat:@"%@%@",numValue1,numValue2];
    //self.labelText.text=[NSString stringWithFormat:@"%@ %@",numValue1,numValue2];
    [self.butnum12 setBackgroundImage:btnImage forState:UIControlStateNormal];

}

- (IBAction)butNum13:(id)sender {
    numValue1=@"3";
    UIImage *btnImage = [UIImage imageNamed:@"23.png"];
    [self resetColorBtn1];
    numValue = [NSString stringWithFormat:@"%@%@",numValue1,numValue2];
    //self.labelText.text=[NSString stringWithFormat:@"%@ %@",numValue1,numValue2];
    [self.butnum13 setBackgroundImage:btnImage forState:UIControlStateNormal];
}

- (IBAction)butNum14:(id)sender {
    numValue1=@"4";
    UIImage *btnImage = [UIImage imageNamed:@"24.png"];
    [self resetColorBtn1];
    numValue = [NSString stringWithFormat:@"%@%@",numValue1,numValue2];
    //self.labelText.text=[NSString stringWithFormat:@"%@ %@",numValue1,numValue2];
    [self.butnum14 setBackgroundImage:btnImage forState:UIControlStateNormal];
}

- (IBAction)butNum15:(id)sender {
    numValue1=@"5";
    UIImage *btnImage = [UIImage imageNamed:@"25.png"];
    [self resetColorBtn1];
    numValue = [NSString stringWithFormat:@"%@%@",numValue1,numValue2];
    //self.labelText.text=[NSString stringWithFormat:@"%@ %@",numValue1,numValue2];
    [self.butnum15 setBackgroundImage:btnImage forState:UIControlStateNormal];
}

- (IBAction)butNum16:(id)sender {
    numValue1=@"6";
    UIImage *btnImage = [UIImage imageNamed:@"26.png"];
    [self resetColorBtn1];
    numValue = [NSString stringWithFormat:@"%@%@",numValue1,numValue2];
    //self.labelText.text=[NSString stringWithFormat:@"%@ %@",numValue1,numValue2];
    [self.butnum16 setBackgroundImage:btnImage forState:UIControlStateNormal];
}

- (IBAction)butNum21:(id)sender {
    numValue2=@"1";
    UIImage *btnImage = [UIImage imageNamed:@"21.png"];
    [self resetColorBtn2];
    numValue = [NSString stringWithFormat:@"%@%@",numValue1,numValue2];
    //self.labelText.text=[NSString stringWithFormat:@"%@ %@",numValue1,numValue2];
    [self.butnum21 setBackgroundImage:btnImage forState:UIControlStateNormal];
}

- (IBAction)butNum22:(id)sender {
    numValue2=@"2";
    UIImage *btnImage = [UIImage imageNamed:@"22.png"];
    [self resetColorBtn2];
    numValue = [NSString stringWithFormat:@"%@%@",numValue1,numValue2];
    //self.labelText.text=[NSString stringWithFormat:@"%@ %@",numValue1,numValue2];
    [self.butnum22 setBackgroundImage:btnImage forState:UIControlStateNormal];
}

- (IBAction)butNum23:(id)sender {
    numValue2=@"3";
    UIImage *btnImage = [UIImage imageNamed:@"23.png"];
    [self resetColorBtn2];
    numValue = [NSString stringWithFormat:@"%@%@",numValue1,numValue2];
    //self.labelText.text=[NSString stringWithFormat:@"%@ %@",numValue1,numValue2];
    [self.butnum23 setBackgroundImage:btnImage forState:UIControlStateNormal];
}

- (IBAction)butNum24:(id)sender {
    numValue2=@"4";
    UIImage *btnImage = [UIImage imageNamed:@"24.png"];
    [self resetColorBtn2];
    numValue = [NSString stringWithFormat:@"%@%@",numValue1,numValue2];
    //self.labelText.text=[NSString stringWithFormat:@"%@ %@",numValue1,numValue2];
    [self.butnum24 setBackgroundImage:btnImage forState:UIControlStateNormal];
}

- (IBAction)butNum25:(id)sender {
    numValue2=@"5";
    UIImage *btnImage = [UIImage imageNamed:@"25.png"];
    [self resetColorBtn2];
    numValue = [NSString stringWithFormat:@"%@%@",numValue1,numValue2];
    //self.labelText.text=[NSString stringWithFormat:@"%@ %@",numValue1,numValue2];
    [self.butnum25 setBackgroundImage:btnImage forState:UIControlStateNormal];
}

- (IBAction)butNum26:(id)sender {
    numValue2=@"6";
    UIImage *btnImage = [UIImage imageNamed:@"26.png"];
    [self resetColorBtn2];
    numValue = [NSString stringWithFormat:@"%@%@",numValue1,numValue2];
    //self.labelText.text=[NSString stringWithFormat:@"%@ %@",numValue1,numValue2];
    [self.butnum26 setBackgroundImage:btnImage forState:UIControlStateNormal];
}

- (IBAction)btnSend:(id)sender {
    int _rand;
    
    if (random1 ==YES){
        _rand =arc4random()%(7); if (_rand==0)_rand=1;
        numValue1= [NSString stringWithFormat:@"%i",_rand];
    }
    if (random2 ==YES){
        _rand =arc4random()%(7); if (_rand==0)_rand=1;
        numValue2= [NSString stringWithFormat:@"%i",_rand];
    }
    
    numValue = [NSString stringWithFormat:@"%@%@",numValue1,numValue2];
    
    [self makeDataToSend];
}
@end
