// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADOPERATION_H
#define GADOPERATION_H

@protocol OS_dispatch_group;

#import <Foundation/Foundation.h>


@interface GADOperation : NSObject {
    id *_operationBlock;
    atomic_flag _hasStarted;
    NSObject<OS_dispatch_group> *_completionGroup;
    id *_result;
    NSError *_error;
}


@property (copy, nonatomic) id *completionBlock; // ivar: _completionBlock
@property (nonatomic) CGFloat timeout; // ivar: _timeout
@property (readonly, nonatomic) BOOL timedOut; // ivar: _timedOut


-(id)initWithBlock:(id)arg0 ;
-(id)init;
-(void)dealloc;
-(void)start;
-(void)waitForCompletion;
-(id)resultAfterWaitingWithError:(*id)arg0 ;


@end


#endif