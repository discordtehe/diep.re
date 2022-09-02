// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ARENAVIEW_H
#define ARENAVIEW_H

@class CCNode<ArenaLayer>;


@class CCNode;

@interface ArenaView : CCNode {
    CCNode *mArrowNode;
    float mArrowTargetAngle;
}


@property (readonly, nonatomic) CCNode<ArenaLayer> *background; // ivar: mBackground
@property (nonatomic) BOOL showArrow; // ivar: mShowArrow


-(id)initWithBackground:(id)arg0 ;
-(void)dealloc;
-(struct CGPoint )cameraTargetFromMassCenter:(struct CGPoint )arg0 angle:(float)arg1 ;
-(void)update:(CGFloat)arg0 ;
-(void)updateArrow:(float)arg0 ;
-(struct CGPoint )cameraWorldPosition;
-(void)aimArrowToAxis:(struct CGPoint )arg0 ;
-(void)aimArrowToAxis:(struct CGPoint )arg0 imediate:(BOOL)arg1 ;


@end


#endif