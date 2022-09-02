// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef SKELETONANIMATION_H
#define SKELETONANIMATION_H



@class SkeletonRenderer;

@interface SkeletonAnimation : SkeletonRenderer {
    BOOL _ownsAnimationStateData;
}


@property (readonly, nonatomic) *spAnimationState state; // ivar: _state
@property (nonatomic) float timeScale; // ivar: _timeScale
@property (copy, nonatomic) id *startListener; // ivar: _startListener
@property (copy, nonatomic) id *endListener; // ivar: _endListener
@property (copy, nonatomic) id *completeListener; // ivar: _completeListener
@property (copy, nonatomic) id *eventListener; // ivar: _eventListener


-(id)animationList;
-(id)slotList;
-(id)boneList;
-(void)initialize;
-(?)initWithDataownsSkeletonData;
-(id)initWithFile:(id)arg0 atlas:(struct spAtlas *)arg1 scale:(float)arg2 ;
-(id)initWithFile:(id)arg0 atlasFile:(id)arg1 scale:(float)arg2 ;
-(void)dealloc;
-(void)update:(CGFloat)arg0 ;
-(void)setAnimationStateData:(struct spAnimationStateData *)arg0 ;
-(void)setMixFrom:(id)arg0 to:(id)arg1 duration:(float)arg2 ;
-(struct spTrackEntry *)setAnimationForTrack:(int)arg0 name:(id)arg1 loop:(BOOL)arg2 ;
-(?)addAnimationForTrack:(?)arg0 name:(?)arg1 loopafterDelay;
-(?)getCurrentForTrack;
-(void)clearTracks;
-(void)clearTrack:(int)arg0 ;
-(void)onAnimationStateEvent:(int)arg0 type:(int)arg1 event:(struct spEvent *)arg2 loopCount:(int)arg3 ;
-(void)onTrackEntryEvent:(int)arg0 type:(int)arg1 event:(struct spEvent *)arg2 loopCount:(int)arg3 ;
-(?)setListenerForEntryonStart;
-(?)setListenerForEntryonEnd;
-(?)setListenerForEntryonComplete;
-(?)setListenerForEntryonEvent;
+(?)skeletonWithDataownsSkeletonData;
+(id)skeletonWithFile:(id)arg0 atlas:(struct spAtlas *)arg1 scale:(float)arg2 ;
+(id)skeletonWithFile:(id)arg0 atlasFile:(id)arg1 scale:(float)arg2 ;


@end


#endif