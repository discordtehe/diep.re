// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCTURNOFFTILES_H
#define CCTURNOFFTILES_H



@class CCTiledGrid3DAction;

@interface CCTurnOffTiles : CCTiledGrid3DAction {
    unsigned int _seed;
    NSUInteger _tilesCount;
    *NSUInteger _tilesOrder;
}




-(id)initWithSeed:(int)arg0 grid:(struct CGSize )arg1 duration:(CGFloat)arg2 ;
-(id)initWithDuration:(CGFloat)arg0 size:(struct CGSize )arg1 seed:(unsigned int)arg2 ;
-(id)copyWithZone:(struct _NSZone *)arg0 ;
-(void)dealloc;
-(void)shuffle:(*NSUInteger)arg0 count:(NSUInteger)arg1 ;
-(void)turnOnTile:(struct CGPoint )arg0 ;
-(void)turnOffTile:(struct CGPoint )arg0 ;
-(void)startWithTarget:(id)arg0 ;
-(void)update:(CGFloat)arg0 ;
+(id)actionWithSeed:(int)arg0 grid:(struct CGSize )arg1 duration:(CGFloat)arg2 ;
+(id)actionWithDuration:(CGFloat)arg0 size:(struct CGSize )arg1 seed:(unsigned int)arg2 ;


@end


#endif