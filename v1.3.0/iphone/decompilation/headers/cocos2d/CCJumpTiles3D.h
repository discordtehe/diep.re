// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCJUMPTILES3D_H
#define CCJUMPTILES3D_H



@class CCTiledGrid3DAction;

@interface CCJumpTiles3D : CCTiledGrid3DAction {
    NSUInteger _jumps;
}


@property (nonatomic) float amplitude; // ivar: _amplitude
@property (nonatomic) float amplitudeRate; // ivar: _amplitudeRate


-(id)initWithJumps:(int)arg0 amplitude:(float)arg1 grid:(struct CGSize )arg2 duration:(CGFloat)arg3 ;
-(id)initWithDuration:(CGFloat)arg0 size:(struct CGSize )arg1 jumps:(NSUInteger)arg2 amplitude:(float)arg3 ;
-(id)copyWithZone:(struct _NSZone *)arg0 ;
-(void)update:(CGFloat)arg0 ;
+(id)actionWithJumps:(int)arg0 amplitude:(float)arg1 grid:(struct CGSize )arg2 duration:(CGFloat)arg3 ;
+(id)actionWithDuration:(CGFloat)arg0 size:(struct CGSize )arg1 jumps:(NSUInteger)arg2 amplitude:(float)arg3 ;


@end


#endif