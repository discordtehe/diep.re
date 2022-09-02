// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef USRVINITIALIZESTATENETWORKERROR_H
#define USRVINITIALIZESTATENETWORKERROR_H


#import <Foundation/Foundation.h>

@class USRVInitializeStateError;
@protocol USRVConnectivityDelegate;

@interface USRVInitializeStateNetworkError : USRVInitializeStateError <USRVConnectivityDelegate>



@property (retain, nonatomic) NSCondition *blockCondition; // ivar: _blockCondition
@property (nonatomic) int receivedConnectedEvents; // ivar: _receivedConnectedEvents
@property (nonatomic) NSInteger lastConnectedEventTimeMs; // ivar: _lastConnectedEventTimeMs
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)connected;
-(void)disconnected;
-(id)execute;
-(BOOL)shouldHandleConnectedEvent;


@end


#endif