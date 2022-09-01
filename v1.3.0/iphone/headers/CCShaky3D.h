// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCSHAKY3D_H
#define CCSHAKY3D_H



@class CCGrid3DAction;

@interface CCShaky3D : CCGrid3DAction {
    int _randrange;
    BOOL _shakeZ;
}




-(id)initWithRange:(int)arg0 shakeZ:(BOOL)arg1 grid:(struct CGSize )arg2 duration:(CGFloat)arg3 ;
-(id)initWithDuration:(CGFloat)arg0 size:(struct CGSize )arg1 range:(int)arg2 shakeZ:(BOOL)arg3 ;
-(id)copyWithZone:(struct _NSZone *)arg0 ;
-(void)update:(CGFloat)arg0 ;
+(id)actionWithRange:(int)arg0 shakeZ:(BOOL)arg1 grid:(struct CGSize )arg2 duration:(CGFloat)arg3 ;
+(id)actionWithDuration:(CGFloat)arg0 size:(struct CGSize )arg1 range:(int)arg2 shakeZ:(BOOL)arg3 ;


@end


#endif