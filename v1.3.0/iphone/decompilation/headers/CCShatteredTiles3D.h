// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCSHATTEREDTILES3D_H
#define CCSHATTEREDTILES3D_H



@class CCTiledGrid3DAction;

@interface CCShatteredTiles3D : CCTiledGrid3DAction {
    int _randrange;
    BOOL _once;
    BOOL _shatterZ;
}




-(id)initWithRange:(int)arg0 shatterZ:(BOOL)arg1 grid:(struct CGSize )arg2 duration:(CGFloat)arg3 ;
-(id)initWithDuration:(CGFloat)arg0 size:(struct CGSize )arg1 range:(int)arg2 shatterZ:(BOOL)arg3 ;
-(id)copyWithZone:(struct _NSZone *)arg0 ;
-(void)update:(CGFloat)arg0 ;
+(id)actionWithRange:(int)arg0 shatterZ:(BOOL)arg1 grid:(struct CGSize )arg2 duration:(CGFloat)arg3 ;
+(id)actionWithDuration:(CGFloat)arg0 size:(struct CGSize )arg1 range:(int)arg2 shatterZ:(BOOL)arg3 ;


@end


#endif