// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADPRECACHEMONITOR_H
#define GADPRECACHEMONITOR_H

@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class GADWebAdView;
@class GADObserverCollection;
@class GADResourceBuffer;
@class GADVideoConfiguration;

@interface GADPrecacheMonitor : NSObject {
    NSObject<OS_dispatch_queue> *_lockQueue;
    GADWebAdView *_adView;
    id *_messageSource;
    GADObserverCollection *_observers;
    GADObserverCollection *_resourceBufferObservers;
    GADResourceBuffer *_resourceBuffer;
    NSUInteger _byteThresholdToNotify;
    GADVideoConfiguration *_videoConfiguration;
    NSURL *_videoSourceURL;
    NSTimer *_resourceBufferNotifyUpdateTimer;
    NSInteger _lastNotifiedBytes;
}


@property (readonly) GADResourceBuffer *resourceBuffer;
@property (readonly) NSURL *videoSourceURL;


-(id)initWithWebAdView:(id)arg0 messageSource:(id)arg1 ;
-(void)dealloc;
-(void)handlePrecacheAction:(id)arg0 ;
-(void)abort;
-(void)startPrecachingWithRequest:(id)arg0 fileURL:(id)arg1 ;
-(void)handleResourceBufferNotification:(id)arg0 ;
-(void)stopResourceBufferUpdateCheckTimer;
-(void)notifyPrecacheUpdate;
-(void)notifyPrecacheCompletedWithError:(id)arg0 ;
-(void)notifyPrecacheEvent:(id)arg0 ;
+(void)initialize;


@end


#endif