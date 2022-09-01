// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCSHUFFLETILES_H
#define CCSHUFFLETILES_H



@class CCTiledGrid3DAction;

@interface CCShuffleTiles : CCTiledGrid3DAction {
    unsigned int _seed;
    NSUInteger _tilesCount;
    *NSUInteger _tilesOrder;
    *void _tiles;
}




-(id)initWithSeed:(int)arg0 grid:(struct CGSize )arg1 duration:(CGFloat)arg2 ;
-(id)initWithDuration:(CGFloat)arg0 size:(struct CGSize )arg1 seed:(unsigned int)arg2 ;
-(id)copyWithZone:(struct _NSZone *)arg0 ;
-(void)dealloc;
-(void)shuffle:(*NSUInteger)arg0 count:(NSUInteger)arg1 ;
-(struct CGSize )getDelta:(struct CGSize )arg0 ;
-(void)placeTile:(struct CGPoint )arg0 tile:(struct ? )arg1 ;
-(void)startWithTarget:(id)arg0 ;
-(void)update:(CGFloat)arg0 ;
+(id)actionWithSeed:(int)arg0 grid:(struct CGSize )arg1 duration:(CGFloat)arg2 ;
+(id)actionWithDuration:(CGFloat)arg0 size:(struct CGSize )arg1 seed:(unsigned int)arg2 ;


@end


#endif