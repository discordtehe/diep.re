// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADAVPLAYERITEMLOGGER_H
#define GADAVPLAYERITEMLOGGER_H


#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>

@class GADObserverCollection;
@protocol GADEventContextSource;

@interface GADAVPlayerItemLogger : NSObject {
    AVPlayerItem *_playerItem;
    id<GADEventContextSource> *_contextSource;
    GADObserverCollection *_observers;
    BOOL _enabled;
}




-(id)initWithPlayerItem:(id)arg0 eventContextSource:(id)arg1 ;
-(void)dealloc;
-(void)startMonitoring;
-(void)startMonitoringOnMainThread;
-(void)stopMonitoring;


@end


#endif