// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCDIRECTORMC_H
#define CCDIRECTORMC_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class CCLabelAtlas;
@class CCScene;
@class CCGLViewMC;
@class CCScheduler;
@class CCActionManager;
@protocol CCDirectorDelegate;

@interface CCDirectorMC : NSObject {
    CGFloat _oldAnimationInterval;
    NSUInteger _frames;
    CGFloat _accumDt;
    CGFloat _frameRate;
    CCLabelAtlas *_FPSLabel;
    CCLabelAtlas *_SPFLabel;
    CCLabelAtlas *_drawsLabel;
    CCScene *_nextScene;
    NSMutableArray *_scenesStack;
    timeval _lastUpdate;
    CGFloat _dt;
    int _projection;
    CGSize _winSizeInPoints;
    CGSize _winSizeInPixels;
    CCGLViewMC *__view;
}


@property (readonly, nonatomic) NSThread *runningThread; // ivar: _runningThread
@property (readonly, nonatomic) CCScene *runningScene; // ivar: _runningScene
@property (nonatomic) CGFloat animationInterval; // ivar: _animationInterval
@property (nonatomic) BOOL displayStats; // ivar: _displayStats
@property (nonatomic) BOOL nextDeltaTimeZero; // ivar: _nextDeltaTimeZero
@property (readonly, nonatomic, getter=isPaused) BOOL paused; // ivar: _isPaused
@property (readonly, nonatomic) BOOL isAnimating; // ivar: _isAnimating
@property (nonatomic) int projection;
@property (readonly, nonatomic) NSUInteger totalFrames; // ivar: _totalFrames
@property (readonly, nonatomic) CGFloat secondsPerFrame; // ivar: _secondsPerFrame
@property (nonatomic) NSUInteger forceOrientation; // ivar: _forcedOrientation
@property (readonly, nonatomic) BOOL sendCleanupToScene; // ivar: _sendCleanupToScene
@property (retain, nonatomic) id *notificationNode; // ivar: _notificationNode
@property (nonatomic) NSObject<CCDirectorDelegate> *delegate; // ivar: _delegate
@property (retain, nonatomic) CCScheduler *scheduler; // ivar: _scheduler
@property (retain, nonatomic) CCActionManager *actionManager; // ivar: _actionManager


-(id)init;
-(id)description;
-(void)dealloc;
-(void)setGLDefaultValues;
-(void)drawScene;
-(void)calculateDeltaTime;
-(void)purgeCachedData;
-(float)getZEye;
-(void)setViewport;
-(void)setAlphaBlending:(BOOL)arg0 ;
-(void)setDepthTest:(BOOL)arg0 ;
-(void)setView:(id)arg0 ;
-(id)view;
-(struct CGPoint )convertToGL:(struct CGPoint )arg0 ;
-(struct CGPoint )convertToUI:(struct CGPoint )arg0 ;
-(struct CGSize )winSize;
-(struct CGSize )winSizeInPixels;
-(void)reshapeProjection:(struct CGSize )arg0 ;
-(struct CGSize )orientSize:(struct CGSize )arg0 ;
-(void)runWithScene:(id)arg0 ;
-(void)replaceScene:(id)arg0 ;
-(void)pushScene:(id)arg0 ;
-(void)popScene;
-(void)popToRootScene;
-(void)popToSceneStackLevel:(NSUInteger)arg0 ;
-(void)end;
-(void)setNextScene;
-(void)pause;
-(void)resume;
-(void)startAnimation;
-(void)stopAnimation;
-(void)showStats;
-(void)calculateMPF;
-(void)getFPSImageData:(*char *)arg0 length:(*NSUInteger)arg1 ;
-(void)createStatsLabel;
+(id)sharedDirector;
+(id)alloc;


@end


#endif