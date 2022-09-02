// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VUNGLEOPERATION_H
#define VUNGLEOPERATION_H

@protocol VNGOperationDelegate;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface VungleOperation : NSOperation {
    NSInteger _state;
}


@property (nonatomic) BOOL hasFinishedAlready; // ivar: _hasFinishedAlready
@property (retain, nonatomic) NSMutableSet *internalErrors; // ivar: _internalErrors
@property (copy, nonatomic) id *finishHandler; // ivar: _finishHandler
@property (nonatomic) NSInteger state;
@property (weak, nonatomic) NSObject<VNGOperationDelegate> *operationDelegate; // ivar: _operationDelegate


-(id)init;
-(BOOL)isExecuting;
-(BOOL)isFinished;
-(BOOL)isReady;
-(BOOL)canTransitionToState:(NSInteger)arg0 ;
-(void)start;
-(void)execute;
-(void)finish;
-(void)finishWithErrors:(id)arg0 ;
-(void)finishedWithErrors:(id)arg0 ;
-(void)appendFinishHandler:(id)arg0 ;
-(void)appendError:(id)arg0 ;
-(void)evaluateConditions;
-(void)willEnqueue;
+(id)keyPathsForValuesAffectingIsReady;
+(id)keyPathsForValuesAffectingIsExecuting;
+(id)keyPathsForValuesAffectingIsFinished;


@end


#endif