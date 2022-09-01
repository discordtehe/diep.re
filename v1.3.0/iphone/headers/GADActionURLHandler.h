// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADACTIONURLHANDLER_H
#define GADACTIONURLHANDLER_H

@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol GADEventContextSource;

@interface GADActionURLHandler : NSObject {
    NSObject<OS_dispatch_queue> *_lockQueue;
    BOOL _bufferActionsPaused;
    NSMutableArray *_bufferedURLRequests;
    id<GADEventContextSource> *_messageSource;
}




-(id)initWithMessageSource:(id)arg0 ;
-(void)dealloc;
-(void)handleActionURLRequest:(id)arg0 ;
-(void)pauseBufferedActions;
-(void)resumeBufferedActions;


@end


#endif