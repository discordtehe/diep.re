// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADVIDEOMETADATAMONITOR_H
#define GADVIDEOMETADATAMONITOR_H


#import <Foundation/Foundation.h>

@class GADObserverCollection;
@class GADAdVideoController;

@interface GADVideoMetadataMonitor : NSObject {
    GADObserverCollection *_observers;
    GADAdVideoController *_videoController;
}




-(id)initWithMessageSource:(id)arg0 adVideoController:(id)arg1 ;
-(void)handleVideoMetadataAction:(id)arg0 ;


@end


#endif