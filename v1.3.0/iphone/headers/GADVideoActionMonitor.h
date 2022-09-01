// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADVIDEOACTIONMONITOR_H
#define GADVIDEOACTIONMONITOR_H


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class GADWebAdView;
@class GADObserverCollection;
@class GADVideoPlayer;
@class GADPrecacheMonitor;
@class GADVideoConfiguration;
@class GADVideoLoggingContextSource;
@protocol GADVideoPlayerViewLoading;
@protocol GADAVPlayerItemProvider;

@interface GADVideoActionMonitor : NSObject {
    UIView *_videoContainerView;
    GADWebAdView *_adView;
    GADObserverCollection *_observers;
    GADVideoPlayer *_videoPlayer;
    UIView *_videoPlayerView;
    id<GADVideoPlayerViewLoading> *_videoPlayerViewLoader;
    CGRect _cachedVideoPlayerFrame;
    id *_visibilityMessageSource;
    id<GADAVPlayerItemProvider> *_playerItemProvider;
    GADPrecacheMonitor *_precacheMonitor;
    NSInteger _gcacheLoadRequestIdentifier;
    GADVideoConfiguration *_videoConfiguration;
    GADVideoConfiguration *_gcacheVideoConfiguration;
    NSInteger _renderingIdentifier;
    GADVideoLoggingContextSource *_loggingContextSource;
    NSNumber *_cachedVolume;
    NSNumber *_cachedMuted;
}




-(id)initWithVideoContainerView:(id)arg0 webAdView:(id)arg1 messageSource:(id)arg2 visibilityMessageSource:(id)arg3 ;
-(void)dealloc;
-(void)positionVideo:(id)arg0 ;
-(void)rotateVideo:(id)arg0 ;
-(void)createNewVideo:(id)arg0 ;
-(void)setVideoSource:(id)arg0 ;
-(void)loadPrecachedFileURL:(id)arg0 ;
-(void)loadGCacheVideoURL:(id)arg0 ;
-(void)loadNetworkVideoURL:(id)arg0 ;
-(void)loadVideoFromVideoPlayerItemProvider:(id)arg0 ;
-(void)createVideoPlayerView;
-(void)hideVideo:(id)arg0 ;
-(void)showVideo:(id)arg0 ;
-(void)updateBackground:(id)arg0 ;
-(void)setMute:(id)arg0 ;
-(void)setVolume:(id)arg0 ;
-(void)loadVideo:(id)arg0 ;
-(void)loadControl:(id)arg0 ;
-(void)playVideo:(id)arg0 ;
-(void)pauseVideo:(id)arg0 ;
-(void)seekToTime:(id)arg0 ;
-(void)handlePrepareAnimation:(id)arg0 ;
-(void)handlePerformAnimation:(id)arg0 ;


@end


#endif