// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FABASYNCOPERATION_H
#define FABASYNCOPERATION_H


#import <Foundation/Foundation.h>


@interface FABAsyncOperation : NSOperation {
    BOOL _internalExecuting;
    BOOL _internalFinished;
}


@property (retain, nonatomic) NSRecursiveLock *lock; // ivar: _lock
@property (copy, nonatomic) id *asyncCompletion; // ivar: _asyncCompletion


-(id)init;
-(BOOL)isConcurrent;
-(BOOL)isAsynchronous;
-(BOOL)isExecuting;
-(BOOL)isFinished;
-(void)start;
-(void)changeValueForKey:(id)arg0 inBlock:(id)arg1 ;
-(void)lock:(id)arg0 ;
-(BOOL)checkForCancellation;
-(void)markStarted;
-(void)markDone;
-(void)finishWithError:(id)arg0 ;


@end


#endif