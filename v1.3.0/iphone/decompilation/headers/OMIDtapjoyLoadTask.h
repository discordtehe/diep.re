// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef OMIDTAPJOYLOADTASK_H
#define OMIDTAPJOYLOADTASK_H

@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface OMIDtapjoyLoadTask : NSObject

@property (readonly, nonatomic) NSURL *url; // ivar: _url
@property (readonly, nonatomic) NSUInteger attemptsCount; // ivar: _attemptsCount
@property (readonly, nonatomic) NSUInteger attemptNumber; // ivar: _attemptNumber
@property (readonly, nonatomic) NSObject<OS_dispatch_queue> *completionQueue; // ivar: _completionQueue
@property (copy, nonatomic) id *responseParser; // ivar: _responseParser
@property (copy, nonatomic) id *completionHandler; // ivar: _completionHandler


-(id)initWithURL:(id)arg0 attemptsCount:(NSUInteger)arg1 completionQueue:(id)arg2 ;
-(void)start;
-(void)handleResponseWithData:(id)arg0 error:(id)arg1 ;
+(id)sharedSession;
+(id)taskToLoadStringFromURL:(id)arg0 attemptsCount:(NSUInteger)arg1 completionHandler:(id)arg2 ;
+(id)taskToLoadStringFromURL:(id)arg0 attemptsCount:(NSUInteger)arg1 completionQueue:(id)arg2 completionHandler:(id)arg3 ;
+(id)taskToSendPingToURL:(id)arg0 completionQueue:(id)arg1 completionHandler:(id)arg2 ;


@end


#endif