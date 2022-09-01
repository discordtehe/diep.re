// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCTRANSITIONFADE_H
#define CCTRANSITIONFADE_H



@class CCTransitionScene;

@interface CCTransitionFade : CCTransitionScene {
    _ccColor4B color;
}




-(id)initWithDuration:(CGFloat)arg0 scene:(id)arg1 withColor:(struct _ccColorThreeB )arg2 ;
-(id)initWithDuration:(CGFloat)arg0 scene:(id)arg1 ;
-(void)onEnter;
-(void)onExit;
+(id)transitionWithDuration:(CGFloat)arg0 scene:(id)arg1 withColor:(struct _ccColorThreeB )arg2 ;


@end


#endif