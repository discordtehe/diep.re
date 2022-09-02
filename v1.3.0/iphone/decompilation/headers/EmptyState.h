// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef EMPTYSTATE_H
#define EMPTYSTATE_H


#import <Foundation/Foundation.h>

@protocol MCMenuState;

@interface EmptyState : NSObject <MCMenuState>



@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(NSUInteger)stateId;
-(void)setupWithStateId:(NSUInteger)arg0 parameters:(id)arg1 ;
-(void)injectParameters:(id)arg0 ;
-(void)changeZOrder:(NSUInteger)arg0 ;
-(void)delayedLeave;
-(CGFloat)enterWithPreviousState:(NSUInteger)arg0 fromStack:(BOOL)arg1 ;
-(CGFloat)leaveWithNewState:(NSUInteger)arg0 toStack:(BOOL)arg1 ;
-(CGFloat)refresh;
-(void)finishEnter:(BOOL)arg0 ;
-(void)finishLeave:(BOOL)arg0 ;
-(void)finishRefresh;
-(void)processContextEvent:(id)arg0 withData:(id)arg1 ;
-(void)destroy;
-(void)enableInput;
-(void)disableInput;
-(void)show;
-(void)hide;
-(BOOL)isReusable;
-(BOOL)allowDuplicates;
-(BOOL)isRootState;
-(BOOL)occupiesFullScreen;
-(BOOL)hasLowerZOrder;


@end


#endif