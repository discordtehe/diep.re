// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VNGOPERATIONQUEUE_H
#define VNGOPERATIONQUEUE_H


#import <Foundation/Foundation.h>

@protocol OperationQueueDelegate;

@interface VNGOperationQueue : NSOperationQueue

@property (weak, nonatomic) NSObject<OperationQueueDelegate> *delegate; // ivar: _delegate


-(id)init;
-(void)addOperation:(id)arg0 ;
-(void)addOperations:(id)arg0 waitUntilFinished:(BOOL)arg1 ;
-(NSUInteger)countOfActiveOperations;
-(NSUInteger)countOfOperations;
+(id)defaultQueue;


@end


#endif