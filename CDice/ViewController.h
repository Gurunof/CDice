//
//  ViewController.h
//  CDice
//
//  Created by Dmitry on 2/3/15.
//  Copyright (c) 2015 free. All rights reserved.
//

#import <UIKit/UIKit.h>

//#import "GameKit/GameKit.h"
//#import "AVFoundation/AVFoundation.h"

#import "TextChat.h"

@interface ViewController : UIViewController<TextChatDelegate>
{
    TextChat* m_textChat;
    GKSession *currentSession;
    IBOutlet UITextField *txtMessage;
    IBOutlet UIButton *connect;
    IBOutlet UIButton *disconnect;
}
@property (weak, nonatomic) IBOutlet UIButton *butnum11;
@property (weak, nonatomic) IBOutlet UIButton *butnum12;
@property (weak, nonatomic) IBOutlet UIButton *butnum13;
@property (weak, nonatomic) IBOutlet UIButton *butnum14;
@property (weak, nonatomic) IBOutlet UIButton *butnum15;
@property (weak, nonatomic) IBOutlet UIButton *butnum16;
@property (weak, nonatomic) IBOutlet UIButton *butnum21;
@property (weak, nonatomic) IBOutlet UIButton *butnum22;
@property (weak, nonatomic) IBOutlet UIButton *butnum23;
@property (weak, nonatomic) IBOutlet UIButton *butnum24;
@property (weak, nonatomic) IBOutlet UIButton *butnum25;
@property (weak, nonatomic) IBOutlet UIButton *butnum26;

@property (weak, nonatomic) IBOutlet UIButton *btnSend;

@property (weak, nonatomic) IBOutlet UIButton *iphoneKubikifromiPad1;
@property (weak, nonatomic) IBOutlet UIButton *iphoneKubikifromiPad2;

//@property (weak, nonatomic) IBOutlet UIImageView *disconnect;

- (IBAction)butNum11:(id)sender;
- (IBAction)butNum12:(id)sender;
- (IBAction)butNum13:(id)sender;
- (IBAction)butNum14:(id)sender;
- (IBAction)butNum15:(id)sender;
- (IBAction)butNum16:(id)sender;
- (IBAction)butNum21:(id)sender;
- (IBAction)butNum22:(id)sender;
- (IBAction)butNum23:(id)sender;
- (IBAction)butNum24:(id)sender;
- (IBAction)butNum25:(id)sender;
- (IBAction)butNum26:(id)sender;

- (IBAction)btnSend:(id)sender;

@property (weak, nonatomic) IBOutlet UILabel *labelText;



@property (retain, nonatomic) IBOutlet UITextView *chatView;
@property (retain, nonatomic) IBOutlet UITextField *messageTextField;
-(void) showMessage:(NSString*)message;
@property (nonatomic, retain) GKSession *currentSession;
@property (nonatomic, retain) UITextField *txtMessage;
@property (nonatomic, retain) UIButton *connect;
@property (nonatomic, retain) UIButton *disconnect;


@end

