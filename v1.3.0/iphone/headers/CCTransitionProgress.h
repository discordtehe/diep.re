// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCTRANSITIONPROGRESS_H
#define CCTRANSITIONPROGRESS_H



@class CCTransitionScene;
@class CCScene;

@interface CCTransitionProgress : CCTransitionScene {
    float _to;
    float _from;
    CCScene *_sceneToBeModified;
}




-(void)onEnter;
-(void)onExit;
-(void)sceneOrder;
-(void)setupTransition;
-(id)progressTimerNodeWithRenderTexture:(id)arg0 ;


@end


#endif