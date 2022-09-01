// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCADSESSIONAPI_H
#define ADCADSESSIONAPI_H

@class ADCFullscreenPresenter;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class ADCMessage;

@interface ADCAdSessionAPI : NSObject {
    NSString *_currentCategory;
    NSUInteger _currentOptions;
    NSDictionary *_delayedFinishFullscreenAdDict;
    ADCMessage *_messageContextForBackgrounding;
}


@property (retain, nonatomic) ADCFullscreenPresenter *presenter; // ivar: _presenter


-(id)init;
-(void)interstitialAvailable:(struct ? )arg0 ;
-(void)interstitialUnavailable:(struct ? )arg0 ;
-(void)adViewAvailable:(struct ? )arg0 ;
-(void)adViewUnavailable:(struct ? )arg0 ;
-(void)nativeAdViewAvailable:(struct ? )arg0 ;
-(void)nativeAdViewUnavailable:(struct ? )arg0 ;
-(void)launchInterstitialForSession:(id)arg0 ;
-(void)startFullscreenAd:(struct ? )arg0 ;
-(void)finishFullscreenAdDelayed;
-(void)finishFullscreenAd:(struct ? )arg0 ;
-(void)audioStarted:(struct ? )arg0 ;
-(void)audioStopped:(struct ? )arg0 ;
-(void)hasAudio:(struct ? )arg0 ;
-(void)destroy:(struct ? )arg0 ;
-(void)expiring:(struct ? )arg0 ;
-(void)iapEvent:(struct ? )arg0 ;
-(void)nativeAdStarted:(struct ? )arg0 ;
-(void)nativeAdFinished:(struct ? )arg0 ;
-(void)nativeAdMuted:(struct ? )arg0 ;
-(void)nativeAdEngagement:(struct ? )arg0 ;
-(void)destroyNativeAdView:(struct ? )arg0 ;
-(void)expanded:(struct ? )arg0 ;
-(void)leftApplication:(struct ? )arg0 ;
-(void)click:(struct ? )arg0 ;
-(void)changeOrientation:(struct ? )arg0 ;
-(void)setSupportedOrientations:(struct ? )arg0 ;
-(void)setFullscreenModuleID:(struct ? )arg0 ;
-(void)onSessionError:(id)arg0 ;
-(void)onSessionRequest:(id)arg0 ;
-(void)onRequestClose:(id)arg0 ;
-(void)onFullscreenAdStarted:(id)arg0 size:(struct CGSize )arg1 ;
-(void)onSilentSwitchChanged:(id)arg0 silent:(BOOL)arg1 ;
-(void)adSession:(id)arg0 onExposureChange:(float)arg1 volume:(float)arg2 isFullscreen:(BOOL)arg3 ;
-(void)registerHandlers;
-(void)startRingerSwitchDetection:(id)arg0 ;
-(void)stopRingerSwitchDetection;


@end


#endif