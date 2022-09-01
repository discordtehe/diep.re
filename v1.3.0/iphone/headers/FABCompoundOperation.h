// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FABCOMPOUNDOPERATION_H
#define FABCOMPOUNDOPERATION_H

@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class FABAsyncOperation;

@interface FABCompoundOperation : FABAsyncOperation

@property (retain, nonatomic) NSOperationQueue *compoundQueue; // ivar: _compoundQueue
@property (nonatomic) NSUInteger completedOperations; // ivar: _completedOperations
@property (retain, nonatomic) NSMutableArray *errors; // ivar: _errors
@property (retain, nonatomic) NSObject<OS_dispatch_queue> *countingQueue; // ivar: _countingQueue
@property (copy, nonatomic) NSArray *operations; // ivar: _operations


-(id)init;
-(void)main;
-(void)cancel;
-(void)injectCompoundAsyncCompletionInOperation:(id)arg0 ;
-(void)injectCompoundSyncCompletionInOperation:(id)arg0 ;
-(void)updateCompletionCountsWithError:(id)arg0 ;
-(void)attemptCompoundCompletion;


@end


#endif