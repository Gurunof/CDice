//
//  TextChat.h
//  Dice
//
//  Created by Dmitry on 08.01.15.
//  Copyright (c) 2015 Me. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <GameKit/GameKit.h>

#define SESSION_ID @"textChat"

@class TextChat;

@protocol TextChatDelegate <NSObject>

-(void) textChat:(TextChat*)textChat didFailWithError:(NSError*)error;
-(void) textChat:(TextChat *)textChat memberConnected:(NSString*)member;
-(void) textChat:(TextChat *)textChat memberDisconnected:(NSString*)member;
-(void) textChat:(TextChat *)textChat newMessageAvailable:(NSString*)message fromMember:(NSString*)member;

@end

@interface TextChat : NSObject<GKSessionDelegate>
{
    GKSession* m_chatSession;
}

@property (nonatomic, retain) IBOutlet id<TextChatDelegate> delegate;

-(void) postMessage:(NSString*)message;

@end
