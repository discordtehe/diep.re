// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TJCVIDEOVIEW_H
#define TJCVIDEOVIEW_H


#import <UIKit/UIKit.h>
#import <CoreFoundation/CoreFoundation.h>
#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>

@protocol TJCVideoPlayerDelegate;

@interface TJCVideoView : UIView {
    BOOL addedStatusObserver;
}


@property (retain, nonatomic) NSTimer *progressTimer; // ivar: _progressTimer
@property (weak, nonatomic) NSObject<TJCVideoPlayerDelegate> *videoPlayerDelegate; // ivar: _videoPlayerDelegate
@property (nonatomic) BOOL videoDidStart; // ivar: _videoDidStart
@property (nonatomic) BOOL videoObserversAdded; // ivar: _videoObserversAdded
@property (nonatomic) BOOL isVisible; // ivar: _isVisible
@property (retain, nonatomic) NSString *queuedError; // ivar: _queuedError
@property (nonatomic) BOOL shouldFireReady; // ivar: _shouldFireReady
@property (retain, nonatomic) AVPlayer *avplayer; // ivar: _avplayer
@property (retain, nonatomic) AVPlayerLayer *playerLayer; // ivar: _playerLayer


-(id)player;
-(void)setPlayer:(id)arg0 ;
-(CGFloat)getVideoDuration;
-(void)setVisible;
-(void)setupVideoPlayer:(id)arg0 delegate:(id)arg1 ;
-(void)observeValueForKeyPath:(id)arg0 ofObject:(id)arg1 change:(id)arg2 context:(*void)arg3 ;
-(void)playVideo;
-(void)pauseVideo;
-(void)resumeVideo;
-(void)clearVideo;
-(void)muteVideo:(BOOL)arg0 ;
-(BOOL)getMuteStatus;
-(void)startProgressTimer;
-(void)clearProgressTimer;
-(void)notifyVideoReady;
-(void)notifyVideoDidStart;
-(void)notifyVideoProgress:(CGFloat)arg0 ;
-(void)notifyVideoDidPause:(CGFloat)arg0 ;
-(void)notifyVideoError:(id)arg0 ;
-(void)dealloc;
-(void)dismiss;
-(void)clearVideoObservers;
-(void)videoDidPlayToEnd;
-(void)videoDidInterrupt:(id)arg0 ;
-(void)audioHardwareRouteChanged:(id)arg0 ;
+(Class)layerClass;


@end


#endif