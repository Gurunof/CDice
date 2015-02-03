//
//  TextChat.m
//  Dice
//
//  Created by Dmitry on 08.01.15.
//  Copyright (c) 2015 Me. All rights reserved.
//

#import "TextChat.h"

@implementation TextChat
@synthesize delegate;

-(id) init
{
    self = [super init];
    
    m_chatSession = [[GKSession alloc] initWithSessionID:SESSION_ID displayName:nil sessionMode:GKSessionModePeer];
    m_chatSession.delegate = self;
    [m_chatSession setDataReceiveHandler:self withContext:NULL];
    m_chatSession.available = YES;
    
    return self;
}

-(void) dealloc {
    m_chatSession.available = NO;
    //  [m_chatSession release];
    self.delegate = nil;
    //  [super dealloc];
}

-(void) postMessage:(NSString *)message {
    NSError* error = nil;
    [m_chatSession sendDataToAllPeers:[message dataUsingEncoding:NSUTF8StringEncoding] withDataMode:GKSendDataReliable error:&error];
    if ( error && [self.delegate respondsToSelector:@selector(textChat:didFailWithError:)] )
        [self.delegate textChat:self didFailWithError:error];
    
    
}

#pragma mark - GKSessionDelegate

- (void)session:(GKSession *)session peer:(NSString *)peerID didChangeState:(GKPeerConnectionState)state {
    if ( state == GKPeerStateAvailable ) {
        [session connectToPeer:peerID withTimeout:10.0];
    } else if ( state == GKPeerStateConnected ) {
        if ( [self.delegate respondsToSelector:@selector(textChat:memberConnected:)] )
            [self.delegate textChat:self memberConnected:[session displayNameForPeer:peerID]];
    } else if ( state == GKPeerStateDisconnected ) {
        if ( [self.delegate respondsToSelector:@selector(textChat:memberDisconnected:)] )
            [self.delegate textChat:self memberDisconnected:[session displayNameForPeer:peerID]];
    }
}

- (void)session:(GKSession *)session didReceiveConnectionRequestFromPeer:(NSString *)peerID {
    NSError* error = nil;
    [session acceptConnectionFromPeer:peerID error:&error];
    if ( error && [self.delegate respondsToSelector:@selector(textChat:didFailWithError:)] )
        [self.delegate textChat:self didFailWithError:error];
}
- (void)session:(GKSession *)session connectionWithPeerFailed:(NSString *)peerID withError:(NSError *)error {
    if ( [self.delegate respondsToSelector:@selector(textChat:didFailWithError:)] )
        [self.delegate textChat:self didFailWithError:error];
}
- (void)session:(GKSession *)session didFailWithError:(NSError *)error {
    if ([self.delegate respondsToSelector:@selector(textChat:didFailWithError:)] )
        [self.delegate textChat:self didFailWithError:error];
}

#pragma mark - Data Handler
- (void) receiveData:(NSData *)data fromPeer:(NSString *)peer inSession:(GKSession *)session context:(void *)context {
    NSString* message = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    
    if ( [self.delegate respondsToSelector:@selector(textChat:newMessageAvailable:fromMember:)] )
        [self.delegate textChat:self newMessageAvailable:message fromMember:[session displayNameForPeer:peer]];
}

@end
