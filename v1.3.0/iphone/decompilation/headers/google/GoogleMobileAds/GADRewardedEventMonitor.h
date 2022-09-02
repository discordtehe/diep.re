// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADREWARDEDEVENTMONITOR_H
#define GADREWARDEDEVENTMONITOR_H


#import <Foundation/Foundation.h>

@class GADAd;
@class GADObserverCollection;
@class GADAdReward;

@interface GADRewardedEventMonitor : NSObject {
    GADAd *_ad;
    GADObserverCollection *_observers;
    GADAdReward *_reward;
    NSString *_userIdentifier;
    NSString *_customRewardString;
}




-(id)initWithAd:(id)arg0 reward:(id)arg1 view:(id)arg2 userIdentifier:(id)arg3 customRewardString:(id)arg4 ;
-(void)handleVideoAction:(id)arg0 ;
-(void)handleRewardGranted:(id)arg0 ;
-(void)handleVideoStarted;
-(void)handleVideoCompleted;
+(void)addMonitorToAd:(id)arg0 adConfiguration:(struct NSDictionary *)arg1 view:(id)arg2 userIdentifier:(id)arg3 customRewardString:(id)arg4 ;


@end


#endif