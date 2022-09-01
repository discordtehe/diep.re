// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADAPPLICATIONVOLUMEMONITOR_H
#define GADAPPLICATIONVOLUMEMONITOR_H


#import <Foundation/Foundation.h>

@class GADWebAdView;
@class GADObserverCollection;

@interface GADApplicationVolumeMonitor : NSObject {
    GADWebAdView *_webAdView;
    GADObserverCollection *_observers;
}




-(id)initWithWebAdView:(id)arg0 ;
-(void)reportCurrentAudioState;


@end


#endif