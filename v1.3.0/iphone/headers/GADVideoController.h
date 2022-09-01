// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADVIDEOCONTROLLER_H
#define GADVIDEOCONTROLLER_H

@protocol OS_dispatch_queue, GADVideoControllerDelegate;

#import <Foundation/Foundation.h>

@class GADObserverCollection;
@protocol GADVideoControlling;
@protocol GADVideoControlling;
@protocol GADVideoControlling;

@interface GADVideoController : NSObject <GADVideoControlling>

 {
    id<GADVideoControlling> *_internalVideoController;
    GADObserverCollection *_collection;
    NSObject<OS_dispatch_queue> *_lockQueue;
    id *_playbackEndedBlock;
}


@property (retain) NSObject<GADVideoControlling> *internalVideoController;
@property (weak, nonatomic) NSObject<GADVideoControllerDelegate> *delegate; // ivar: _delegate
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(void)setVideoPlaybackEndedBlock:(id)arg0 ;
-(void)play;
-(void)pause;
-(void)stop;
-(void)setMute:(BOOL)arg0 ;
-(BOOL)hasVideoContent;
-(CGFloat)aspectRatio;
-(void)setInitialStateWithConfigurations:(id)arg0 ;
-(CGFloat)duration;
-(CGFloat)currentTime;
-(BOOL)isMuted;
-(BOOL)customControlsEnabled;
-(NSInteger)videoPlaybackState;
-(BOOL)clickToExpandEnabled;
-(void)startObservingAdVideoController;


@end


#endif