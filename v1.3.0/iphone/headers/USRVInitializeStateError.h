// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef USRVINITIALIZESTATEERROR_H
#define USRVINITIALIZESTATEERROR_H



@class USRVInitializeState;

@interface USRVInitializeStateError : USRVInitializeState

@property (retain, nonatomic) id *erroredState; // ivar: _erroredState


-(id)initWithConfiguration:(id)arg0 erroredState:(id)arg1 stateName:(id)arg2 message:(id)arg3 ;
-(id)execute;


@end


#endif