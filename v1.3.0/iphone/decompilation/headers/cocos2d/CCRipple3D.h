// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCRIPPLE3D_H
#define CCRIPPLE3D_H



@class CCGrid3DAction;

@interface CCRipple3D : CCGrid3DAction {
    CGPoint _position;
    float _radius;
    NSUInteger _waves;
}


@property (nonatomic) CGPoint position;
@property (nonatomic) float amplitude; // ivar: _amplitude
@property (nonatomic) float amplitudeRate; // ivar: _amplitudeRate


-(id)initWithPosition:(struct CGPoint )arg0 radius:(float)arg1 waves:(int)arg2 amplitude:(float)arg3 grid:(struct CGSize )arg4 duration:(CGFloat)arg5 ;
-(id)initWithDuration:(CGFloat)arg0 size:(struct CGSize )arg1 position:(struct CGPoint )arg2 radius:(float)arg3 waves:(NSInteger)arg4 amplitude:(float)arg5 ;
-(id)copyWithZone:(struct _NSZone *)arg0 ;
-(void)update:(CGFloat)arg0 ;
+(id)actionWithPosition:(struct CGPoint )arg0 radius:(float)arg1 waves:(int)arg2 amplitude:(float)arg3 grid:(struct CGSize )arg4 duration:(CGFloat)arg5 ;
+(id)actionWithDuration:(CGFloat)arg0 size:(struct CGSize )arg1 position:(struct CGPoint )arg2 radius:(float)arg3 waves:(NSInteger)arg4 amplitude:(float)arg5 ;


@end


#endif