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
    NSString *dataComeFromDice;
    bool random1;
    bool random2;
}

@end

@implementation ViewController

@synthesize chatView;
@synthesize messageTextField;
//@synthesize device;
@synthesize currentSession;
@synthesize txtMessage;
@synthesize connect;
@synthesize disconnect;
GKPeerPickerController *picker;


- (void)viewDidLoad {
    [super viewDidLoad];
    [[UIApplication sharedApplication] setIdleTimerDisabled: YES];
    
    
    m_textChat = [[TextChat alloc] init];
    m_textChat.delegate = self;
    
    [self startValuse];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (void)startValuse{
    dataComeFromDice=@"";
    
    random1=YES;
    random2=YES;
    dataToSend = @"";
    dataDop= @"   ";
    numValue = @"";
    numValue1 = @"";
    numValue2 = @"";
    self.disconnect.alpha=0;
}

#pragma mark - ToSend

-(void) makeDataToSend{
    
    dataToSend = [NSString stringWithFormat:@"%@%@%@",numValue1,dataDop,numValue2];
  //  self.labelText.text = dataToSend;
   /*
    NSString *_temp;
    _temp = @"19992";
  
    NSString *_1;
    NSString *_2;
    
    _1 = [_temp substringToIndex:1];
    _2 =[[_temp substringFromIndex:3]substringToIndex:1];
//    _1 = [_1 substringToIndex:1];
    
    self.labelText.text = [NSString stringWithFormat:@"%@ - %@",_1,_2];
    */
   [m_textChat postMessage:dataToSend];
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

#pragma mark - TextChat

-(void) textChat:(TextChat*)textChat didFailWithError:(NSError*)error {}
-(void) textChat:(TextChat *)textChat memberConnected:(NSString*)member {
    self.disconnect.alpha=1;
}

-(void) textChat:(TextChat *)textChat memberDisconnected:(NSString*)member {
    self.disconnect.alpha=0;
}


-(void) textChat:(TextChat *)textChat newMessageAvailable:
//1DA4 - 1 4


(NSString*)message fromMember:(NSString*)member {
    dataComeFromDice=[NSString stringWithFormat:@"%@",message];
    NSString *_1;
    NSString *_2;
    
    _1 = [dataComeFromDice substringToIndex:1];
    _2 =[[dataComeFromDice substringFromIndex:4]substringToIndex:1];
    
    // NSString *_kubtemp =
    
    _2 = [NSString stringWithFormat:@"1%@.png",_2];
    _1 = [NSString stringWithFormat:@"1%@.png",_1];
    
     UIImage *btnImage = [UIImage imageNamed:_1];
        [self.iphoneKubikifromiPad1 setBackgroundImage:btnImage forState:UIControlStateNormal];
     btnImage = [UIImage imageNamed:_2];
     [self.iphoneKubikifromiPad2 setBackgroundImage:btnImage forState:UIControlStateNormal];
    
    self.labelText.text = dataComeFromDice;
}


-(void) showMessage:(NSString*)message {
    
    self.labelText.text = [NSString stringWithFormat:@"%@\n%@",message,self.chatView.text];
}


@end
