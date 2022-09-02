// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MOPUBPLAYERVIEWCONTROLLER_H
#define MOPUBPLAYERVIEWCONTROLLER_H


#import <UIKit/UIKit.h>
#import <CoreFoundation/CoreFoundation.h>
#import <AVFoundation/AVFoundation.h>
#import <Foundation/Foundation.h>

@class MPExtendedHitBoxButton;
@class MPAdDestinationDisplayAgent;
@class MOPUBPlayerView;
@class MOPUBAVPlayer;
@class MPVASTTracking;
@class MOPUBNativeVideoAdConfigValues;
@protocol MOPUBAVPlayerDelegate;
@protocol MOPUBPlayerViewDelegate;
@protocol MPAdDestinationDisplayAgentDelegate;
@protocol MOPUBPlayerViewControllerDelegate;

@interface MOPUBPlayerViewController : UIViewController <MOPUBAVPlayerDelegate, MOPUBPlayerViewDelegate, MPAdDestinationDisplayAgentDelegate>



@property (retain, nonatomic) MPExtendedHitBoxButton *muteButton; // ivar: _muteButton
@property (retain, nonatomic) UIActivityIndicatorView *loadingIndicator; // ivar: _loadingIndicator
@property (retain, nonatomic) MPAdDestinationDisplayAgent *displayAgent; // ivar: _displayAgent
@property (nonatomic) BOOL alreadyInitialized; // ivar: _alreadyInitialized
@property (nonatomic) BOOL downloadFinishedEventFired; // ivar: _downloadFinishedEventFired
@property (nonatomic) BOOL alreadyCreatedPlayerView; // ivar: _alreadyCreatedPlayerView
@property (nonatomic) BOOL finishedPlaying; // ivar: _finishedPlaying
@property (readonly, nonatomic) NSURL *mediaURL; // ivar: _mediaURL
@property (readonly, nonatomic) MOPUBPlayerView *playerView; // ivar: _playerView
@property (readonly, nonatomic) AVPlayerItem *playerItem; // ivar: _playerItem
@property (readonly, nonatomic) MOPUBAVPlayer *avPlayer; // ivar: _avPlayer
@property (retain, nonatomic) MPVASTTracking *vastTracking; // ivar: _vastTracking
@property (readonly, nonatomic) CGFloat videoAspectRatio; // ivar: _videoAspectRatio
@property (readonly, nonatomic) MOPUBNativeVideoAdConfigValues *nativeVideoAdConfig; // ivar: _nativeVideoAdConfig
@property (nonatomic) NSUInteger displayMode;
@property (nonatomic) BOOL muted; // ivar: _muted
@property (nonatomic) BOOL startedLoading; // ivar: _startedLoading
@property (nonatomic) BOOL playing; // ivar: _playing
@property (nonatomic) BOOL paused; // ivar: _paused
@property (nonatomic) BOOL isReadyToPlay; // ivar: _isReadyToPlay
@property (nonatomic) BOOL disposed; // ivar: _disposed
@property (retain, nonatomic) NSURL *defaultActionURL; // ivar: _defaultActionURL
@property (weak, nonatomic) NSObject<MOPUBPlayerViewControllerDelegate> *delegate; // ivar: _delegate
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithVideoConfig:(id)arg0 nativeVideoAdConfig:(id)arg1 ;
-(void)viewDidLoad;
-(void)viewWillLayoutSubviews;
-(void)layoutLoadingIndicator;
-(void)dealloc;
-(void)dispose;
-(void)handleVideoInitError;
-(void)loadAndPlayVideo;
-(void)prepareToPlayAsset:(id)arg0 withKeys:(id)arg1 ;
-(void)initOnVideoReady;
-(void)createView;
-(void)createMuteButton;
-(void)startPlayer;
-(void)startLoadingIndicator;
-(void)stopLoadingIndicator;
-(void)removeLoadingIndicator;
-(void)observeValueForKeyPath:(id)arg0 ofObject:(id)arg1 change:(id)arg2 context:(*void)arg3 ;
-(void)pause;
-(void)resume;
-(void)seekToTime:(CGFloat)arg0 ;
-(BOOL)shouldStartNewPlayer;
-(BOOL)shouldResumePlayer;
-(BOOL)shouldPausePlayer;
-(void)willEnterFullscreen;
-(void)willExitFullscreen;
-(void)avPlayer:(id)arg0 playbackTimeDidProgress:(CGFloat)arg1 ;
-(void)avPlayer:(id)arg0 didError:(id)arg1 withMessage:(id)arg2 ;
-(void)avPlayerDidFinishPlayback:(id)arg0 ;
-(void)avPlayerDidRecoverFromStall:(id)arg0 ;
-(void)avPlayerDidStall:(id)arg0 ;
-(void)playerViewDidTapReplayButton:(id)arg0 ;
-(void)playerViewWillShowReplayView:(id)arg0 ;
-(void)playerViewWillEnterFullscreen:(id)arg0 ;
-(void)applicationDidEnterBackground:(id)arg0 ;
-(void)applicationDidEnterForeground:(id)arg0 ;
-(id)viewControllerForPresentingModalView;


@end


#endif