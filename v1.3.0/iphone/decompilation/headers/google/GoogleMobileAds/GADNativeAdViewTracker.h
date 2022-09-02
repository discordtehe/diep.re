// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADNATIVEADVIEWTRACKER_H
#define GADNATIVEADVIEWTRACKER_H


#import <Foundation/Foundation.h>


@interface GADNativeAdViewTracker : NSObject {
    NSMapTable *_adViewToAdMap;
    NSMapTable *_adToAdViewMap;
}




-(id)init;
-(void)registerAdView:(id)arg0 assetViewTracker:(id)arg1 forNativeAd:(id)arg2 ;
-(void)removeAdViewForNativeAd:(id)arg0 ;
-(id)adViewForNativeAd:(id)arg0 ;
+(id)sharedInstance;


@end


#endif