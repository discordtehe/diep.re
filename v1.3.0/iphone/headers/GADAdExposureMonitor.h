// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADADEXPOSUREMONITOR_H
#define GADADEXPOSUREMONITOR_H


#import <Foundation/Foundation.h>

@class GADObserverCollection;

@interface GADAdExposureMonitor : NSObject {
    GADObserverCollection *_observers;
    BOOL _adExposureBegan;
    NSString *_adUnitID;
}




-(id)initWithAd:(id)arg0 adUnitID:(id)arg1 useVisibilityNotification:(BOOL)arg2 ;
-(void)startExposure;
-(void)endExposure;
-(void)dealloc;
+(void)addMonitorToAd:(id)arg0 adConfiguration:(struct NSDictionary *)arg1 useVisibilityNotification:(BOOL)arg2 ;


@end


#endif