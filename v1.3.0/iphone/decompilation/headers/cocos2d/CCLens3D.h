// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCLENS3D_H
#define CCLENS3D_H



@class CCGrid3DAction;

@interface CCLens3D : CCGrid3DAction {
    CGPoint _position;
    float _radius;
    BOOL _dirty;
}


@property (nonatomic) float lensEffect; // ivar: _lensEffect
@property (nonatomic) CGPoint position;


-(id)initWithPosition:(struct CGPoint )arg0 radius:(float)arg1 grid:(struct CGSize )arg2 duration:(CGFloat)arg3 ;
-(id)initWithDuration:(CGFloat)arg0 size:(struct CGSize )arg1 position:(struct CGPoint )arg2 radius:(float)arg3 ;
-(id)copyWithZone:(struct _NSZone *)arg0 ;
-(void)update:(CGFloat)arg0 ;
+(id)actionWithPosition:(struct CGPoint )arg0 radius:(float)arg1 grid:(struct CGSize )arg2 duration:(CGFloat)arg3 ;
+(id)actionWithDuration:(CGFloat)arg0 size:(struct CGSize )arg1 position:(struct CGPoint )arg2 radius:(float)arg3 ;


@end


#endif