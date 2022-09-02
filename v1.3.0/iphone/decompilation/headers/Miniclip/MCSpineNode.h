// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCSPINENODE_H
#define MCSPINENODE_H


#import <Foundation/Foundation.h>

@class CCNodeRGBA;

@interface MCSpineNode : CCNodeRGBA {
    BOOL isPlaying;
    CGPoint _offset;
    CCNodeRGBA *_spineNode;
}


@property (retain, nonatomic) NSString *animationFile; // ivar: _animationFile
@property (retain, nonatomic) NSString *animationName; // ivar: _animationName
@property (nonatomic) BOOL loop; // ivar: _loop
@property (nonatomic) BOOL centerInSize; // ivar: _centerInSize
@property (nonatomic) BOOL autoplay; // ivar: _autoplay


-(id)initWithAnimationFile:(id)arg0 animationName:(id)arg1 loop:(BOOL)arg2 ;
-(id)initWithAnimationFile:(id)arg0 animationName:(id)arg1 loop:(BOOL)arg2 centerInSize:(BOOL)arg3 autoplay:(BOOL)arg4 ;
-(id)init;
-(struct spTrackEntry *)setAnimationForTrack:(int)arg0 name:(id)arg1 loop:(BOOL)arg2 ;
-(?)addAnimationForTrack:(?)arg0 name:(?)arg1 loopafterDelay;
-(void)clearTracks;
-(void)clearTrack:(int)arg0 ;
-(void)setToSetupPose;
-(void)setStartListener:(id)arg0 ;
-(void)setEndListener:(id)arg0 ;
-(void)setCompleteListener:(id)arg0 ;
-(void)setEventListener:(id)arg0 ;
-(id)getSkeletonAnimation;
-(id)slotNameValues;
-(id)boneNameValues;
-(void)setOpacity:(unsigned char)arg0 ;
-(void)updateDisplayedOpacity:(unsigned char)arg0 ;
-(void)setColor:(struct _ccColorThreeB )arg0 ;
-(void)updateDisplayedColor:(struct _ccColorThreeB )arg0 ;
-(void)pauseAnimation;
-(void)resumeAnimation;
-(void)update:(CGFloat)arg0 ;
-(void)visit;
-(id)getChildForName:(id)arg0 type:(id)arg1 ;
-(id)getChildForSlotName:(id)arg0 ;
-(id)getChildForBoneName:(id)arg0 ;
-(void)addChild:(id)arg0 toSlotName:(id)arg1 ;
-(void)addChild:(id)arg0 toBoneName:(id)arg1 ;
-(void)dealloc;
-(void)didLoadFromCCB;
+(id)spineWithAnimationFile:(id)arg0 animationName:(id)arg1 loop:(BOOL)arg2 ;
+(id)spineWithAnimationFile:(id)arg0 animationName:(id)arg1 loop:(BOOL)arg2 centerInSize:(BOOL)arg3 autoplay:(BOOL)arg4 ;


@end


#endif