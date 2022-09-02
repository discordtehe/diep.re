// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef INTERSTITIALSMANAGER_H
#define INTERSTITIALSMANAGER_H


#import <Foundation/Foundation.h>


@interface InterstitialsManager : NSObject {
    int _deathsSinceLastInterstitial;
    int _interstitialDisplayedAfterDeath;
    BOOL _cachingInterstitial;
}




-(id)init;
-(void)dealloc;
-(BOOL)showPopup;
-(BOOL)canShowInterstitialForDeathsTotal:(int)arg0 thisSession:(int)arg1 ;
-(void)preloadInterstitial;
-(BOOL)showInterstitial;
-(BOOL)requestingShowInterstitial;
-(BOOL)areBoardsDisplaying;
-(void)increaseNumDeaths;
+(id)sharedInterstitialsManager;
+(BOOL)isInterstitialsManagerInitialized;
+(void)releaseSharedInterstitialsManager;


@end


#endif