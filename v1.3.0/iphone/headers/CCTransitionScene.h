// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCTRANSITIONSCENE_H
#define CCTRANSITIONSCENE_H



@class CCScene;

@interface CCTransitionScene : CCScene {
    CCScene *_inScene;
    CCScene *_outScene;
    CGFloat _duration;
    BOOL _inSceneOnTop;
    BOOL _sendCleanupToScene;
}




-(id)initWithDuration:(CGFloat)arg0 scene:(id)arg1 ;
-(void)sceneOrder;
-(void)draw;
-(void)finish;
-(void)setNewScene:(CGFloat)arg0 ;
-(void)hideOutShowIn;
-(void)onEnter;
-(void)onExit;
-(void)cleanup;
-(void)dealloc;
+(id)transitionWithDuration:(CGFloat)arg0 scene:(id)arg1 ;


@end


#endif