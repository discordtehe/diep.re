// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBMEDIAVIEWVIDEORENDERER_H
#define FBMEDIAVIEWVIDEORENDERER_H


#import <UIKit/UIKit.h>
#import <CoreFoundation/CoreFoundation.h>
#import <Foundation/Foundation.h>

@class FBAdTimeObserver;
@class FBAdVideoLogger;
@class FBAdVideoPlayerView;
@protocol FNFAVPlayer;
@protocol FNFAVPlayerItem;

@interface FBMediaViewVideoRenderer : UIView {
    id *_failureBlock;
    BOOL _isFailed;
    BOOL _isSeeking;
    BOOL _isStarted;
    id *_loadedBlock;
    id<FNFAVPlayer> *_player;
    id<FNFAVPlayerItem> *_playerItem;
    BOOL _playingBeforeSeeked;
    ? _pollingInterval;
    FBAdTimeObserver *_progressLoggingObserver;
    NSMutableSet *_timingObservers;
    float _volume;
    FBAdVideoLogger *_videoLogger;
    CGSize _videoSize;
    FBAdVideoPlayerView *_videoView;
    NSString *_inlineClientToken;
}


@property (nonatomic) BOOL videoOrPlaceholderImageVisible; // ivar: _videoOrPlaceholderImageVisible
@property (readonly, nonatomic) UIView *videoContainerView; // ivar: _videoContainerView
@property (copy, nonatomic) id *videoReadyToDisplay; // ivar: _videoReadyToDisplay
@property (readonly, nonatomic) CGFloat aspectRatio;
@property (readonly, nonatomic) ? currentTime;
@property (readonly, nonatomic) ? duration;
@property (readonly, nonatomic, getter=isPlaying) BOOL playing;
@property (nonatomic) float volume;


-(id)initWithCoder:(id)arg0 ;
-(id)initWithFrame:(struct CGRect )arg0 ;
-(void)initialize;
-(void)dealloc;
-(void)layoutSubviews;
-(void)setFrame:(struct CGRect )arg0 ;
-(id)addPeriodicTimeObserverForInterval:(struct ? )arg0 queue:(id)arg1 usingBlock:(id)arg2 ;
-(void)disengageVideoSeek;
-(void)engageVideoSeek;
-(void)pauseVideo;
-(void)playVideo;
-(void)removeTimeObserver:(id)arg0 ;
-(void)seekVideoToTime:(struct ? )arg0 ;
-(void)loadVideoURL:(id)arg0 pollingInterval:(struct ? )arg1 clientToken:(id)arg2 autoplayEnabled:(BOOL)arg3 ;
-(void)loadVideoURL:(id)arg0 pollingInterval:(struct ? )arg1 clientToken:(id)arg2 autoplayEnabled:(BOOL)arg3 cardIndex:(id)arg4 cardCount:(id)arg5 ;
// -(void)loadVideoURL:(id)arg0 pollingInterval:(struct ? )arg1 clientToken:(id)arg2 autoplayEnabled:(BOOL)arg3 loadedBlock:(id)arg4 failureBlock:(unk)arg5  ;
// -(void)loadVideoURL:(id)arg0 pollingInterval:(struct ? )arg1 clientToken:(id)arg2 autoplayEnabled:(BOOL)arg3 loadedBlock:(id)arg4 failureBlock:(unk)arg5 cardIndex:(id)arg6 cardCount:(unk)arg7  ;
-(struct CGRect )wantedVideoContainerFrame;
-(id)extraDataForVideoFunnelLogging:(id)arg0 ;
-(void)videoDidChangeVolume;
-(void)videoDidLoad;
-(void)videoDidPause;
-(void)videoDidPlay;
-(void)videoDidEngageSeek;
-(void)videoDidSeek;
-(void)videoDidDisengageSeek;
-(void)videoDidEnd;
-(void)videoDidFailWithError:(id)arg0 ;


@end


#endif