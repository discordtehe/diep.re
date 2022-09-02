// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef USRVINITIALIZESTATECONFIG_H
#define USRVINITIALIZESTATECONFIG_H



@class USRVInitializeState;

@interface USRVInitializeStateConfig : USRVInitializeState

@property (nonatomic) int retries; // ivar: _retries
@property (nonatomic) int maxRetries; // ivar: _maxRetries
@property (nonatomic) int retryDelay; // ivar: _retryDelay


-(id)initWithConfiguration:(id)arg0 retries:(int)arg1 retryDelay:(int)arg2 ;
-(id)execute;


@end


#endif