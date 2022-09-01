// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef USRVINITIALIZESTATERETRY_H
#define USRVINITIALIZESTATERETRY_H



@class USRVInitializeState;

@interface USRVInitializeStateRetry : USRVInitializeState

@property (retain, nonatomic) id *retryState; // ivar: _retryState
@property (nonatomic) int retryDelay; // ivar: _retryDelay


-(id)initWithConfiguration:(id)arg0 retryState:(id)arg1 retryDelay:(int)arg2 ;
-(id)execute;


@end


#endif