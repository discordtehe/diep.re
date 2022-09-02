// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCTRANSITIONFADEALT_H
#define CCTRANSITIONFADEALT_H



@class CCTransitionScene;

@interface CCTransitionFadeAlt : CCTransitionScene {
    _ccColor4B color;
    BOOL hideOutShowInDone;
}


@property (readonly) BOOL isFinished; // ivar: isFinished


-(id)initWithDuration:(CGFloat)arg0 scene:(id)arg1 withColor:(struct _ccColorThreeB )arg2 ;
-(id)initWithDuration:(CGFloat)arg0 scene:(id)arg1 ;
-(void)hideOutShowIn;
-(void)finish;
-(void)skipToEnd;
-(void)onEnter;
-(void)onExit;
+(id)transitionWithDuration:(CGFloat)arg0 scene:(id)arg1 withColor:(struct _ccColorThreeB )arg2 ;


@end


#endif