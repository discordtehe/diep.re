// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCWAVES3D_H
#define CCWAVES3D_H



@class CCGrid3DAction;

@interface CCWaves3D : CCGrid3DAction {
    NSUInteger _waves;
}


@property (nonatomic) float amplitude; // ivar: _amplitude
@property (nonatomic) float amplitudeRate; // ivar: _amplitudeRate


-(id)initWithWaves:(int)arg0 amplitude:(float)arg1 grid:(struct CGSize )arg2 duration:(CGFloat)arg3 ;
-(id)initWithDuration:(CGFloat)arg0 size:(struct CGSize )arg1 waves:(NSUInteger)arg2 amplitude:(float)arg3 ;
-(id)copyWithZone:(struct _NSZone *)arg0 ;
-(void)update:(CGFloat)arg0 ;
+(id)actionWithWaves:(int)arg0 amplitude:(float)arg1 grid:(struct CGSize )arg2 duration:(CGFloat)arg3 ;
+(id)actionWithDuration:(CGFloat)arg0 size:(struct CGSize )arg1 waves:(NSUInteger)arg2 amplitude:(float)arg3 ;


@end


#endif