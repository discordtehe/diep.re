// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VUNGLECONCURRENTOPERATION_H
#define VUNGLECONCURRENTOPERATION_H


#import <Foundation/Foundation.h>


@interface VungleConcurrentOperation : NSOperation

@property (copy, nonatomic) id *resultBlock; // ivar: _resultBlock
@property (nonatomic) BOOL running; // ivar: _running
@property (nonatomic) BOOL didCancel; // ivar: _didCancel


-(id)initWithResultBlock:(id)arg0 ;
-(void)start;
-(void)finishOperation;
-(void)cancel;
-(BOOL)isConcurrent;
-(BOOL)isAsynchronous;
-(BOOL)isExecuting;
-(BOOL)isFinished;
-(BOOL)isCancelled;


@end


#endif