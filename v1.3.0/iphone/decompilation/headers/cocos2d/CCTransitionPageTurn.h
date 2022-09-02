// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCTRANSITIONPAGETURN_H
#define CCTRANSITIONPAGETURN_H



@class CCTransitionScene;

@interface CCTransitionPageTurn : CCTransitionScene {
    BOOL _back;
}




-(id)initWithDuration:(CGFloat)arg0 scene:(id)arg1 backwards:(BOOL)arg2 ;
-(void)sceneOrder;
-(void)onEnter;
-(id)actionWithSize:(struct CGSize )arg0 ;
+(id)transitionWithDuration:(CGFloat)arg0 scene:(id)arg1 backwards:(BOOL)arg2 ;


@end


#endif