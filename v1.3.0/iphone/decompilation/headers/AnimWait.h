// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ANIMWAIT_H
#define ANIMWAIT_H



@class MCMenuItemNodeStatic;
@class CCSprite;

@interface AnimWait : MCMenuItemNodeStatic {
    CCSprite *_circleA;
    CCSprite *_circleB;
    CCSprite *_circleC;
    CCSprite *_circleD;
    CCSprite *_circleE;
}


@property (nonatomic) float cycle; // ivar: _cycle
@property (nonatomic) float overlap; // ivar: _overlap
@property (nonatomic) float maxScale; // ivar: _maxScale
@property (nonatomic) float minScale; // ivar: _minScale
@property (nonatomic) BOOL useMotion; // ivar: _useMotion


-(void)setup;
-(void)animScaleSprite:(id)arg0 delay:(float)arg1 ;
-(void)animMoveSprite:(id)arg0 delay:(float)arg1 ;
-(void)animStart;
-(void)animStop;
-(void)didLoadFromCCBAfterChildren;
-(void)dealloc;


@end


#endif