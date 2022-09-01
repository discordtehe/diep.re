// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CLSURLSESSIONTASK_H
#define CLSURLSESSIONTASK_H

@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>

@protocol CLSURLSessionTaskDelegate;

@interface CLSURLSessionTask : NSObject

@property (nonatomic) NSObject<CLSURLSessionTaskDelegate> *delegate; // ivar: _delegate
@property (copy, nonatomic) NSURLRequest *originalRequest; // ivar: _originalRequest
@property (copy, nonatomic) NSURLRequest *currentRequest; // ivar: _currentRequest
@property (copy, nonatomic) NSURLResponse *response; // ivar: _response
@property (readonly, nonatomic) NSObject<OS_dispatch_queue> *queue; // ivar: _queue
@property (nonatomic) BOOL invokesDelegate; // ivar: _invokesDelegate
@property (copy, nonatomic) NSError *error; // ivar: _error


-(id)init;
-(void)start;
-(void)cancel;
-(void)resume;
-(void)cleanup;
+(id)task;


@end


#endif