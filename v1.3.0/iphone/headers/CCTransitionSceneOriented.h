// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCTRANSITIONSCENEORIENTED_H
#define CCTRANSITIONSCENEORIENTED_H



@class CCTransitionScene;

@interface CCTransitionSceneOriented : CCTransitionScene {
    int orientation;
}




-(id)initWithDuration:(CGFloat)arg0 scene:(id)arg1 orientation:(int)arg2 ;
+(id)transitionWithDuration:(CGFloat)arg0 scene:(id)arg1 orientation:(int)arg2 ;


@end


#endif