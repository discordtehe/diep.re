// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADADVIDEOCONTROLLER_H
#define GADADVIDEOCONTROLLER_H

@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>

@class GADWebAdView;
@class GADVideoMetadataMonitor;
@class GADVideoOptions;
@class GADEventContext;
@protocol GADVideoControlling;
@protocol GADEventContextSource;

@interface GADAdVideoController : NSObject <GADVideoControlling, GADEventContextSource>

 {
    GADWebAdView *_adView;
    BOOL _videoOptionsCustomControlsRequested;
    BOOL _videoOptionsClickToExpandRequested;
    GADVideoMetadataMonitor *_videoMetadataMonitor;
    GADVideoOptions *_videoOptions;
    NSObject<OS_dispatch_queue> *_lockQueue;
}


@property (nonatomic) NSInteger videoPlaybackState; // ivar: _videoPlaybackState
@property (nonatomic) CGFloat videoDuration; // ivar: _videoDuration
@property (nonatomic) CGFloat currentPlaybackTime; // ivar: _currentPlaybackTime
@property (nonatomic) BOOL videoMuted; // ivar: _videoMuted
@property (nonatomic) BOOL hasVideoContent; // ivar: _hasVideoContent
@property (nonatomic) CGFloat aspectRatio; // ivar: _aspectRatio
@property (nonatomic) BOOL customControlsEnabled; // ivar: _customControlsEnabled
@property (nonatomic) BOOL clickToExpandEnabled; // ivar: _clickToExpandEnabled
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
@property (readonly, nonatomic) GADEventContext *context;


-(id)initWithMessageSource:(id)arg0 webAdView:(id)arg1 ;
-(void)setMute:(BOOL)arg0 ;
-(void)play;
-(void)pause;
-(void)stop;
-(void)setDuration:(CGFloat)arg0 ;
-(CGFloat)duration;
-(void)setCurrentTime:(CGFloat)arg0 ;
-(CGFloat)currentTime;
-(void)setIsMuted:(BOOL)arg0 ;
-(BOOL)isMuted;
-(void)setInitialStateWithConfigurations:(id)arg0 ;


@end


#endif