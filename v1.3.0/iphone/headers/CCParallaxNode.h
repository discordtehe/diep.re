// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCPARALLAXNODE_H
#define CCPARALLAXNODE_H



@class CCNode;

@interface CCParallaxNode : CCNode {
    CGPoint _lastPosition;
}


@property (nonatomic) *ccArray parallaxArray; // ivar: _parallaxArray


-(id)init;
-(void)dealloc;
-(void)addChild:(id)arg0 z:(NSInteger)arg1 tag:(NSInteger)arg2 ;
-(void)addChild:(id)arg0 z:(NSInteger)arg1 parallaxRatio:(struct CGPoint )arg2 positionOffset:(struct CGPoint )arg3 ;
-(void)removeChild:(id)arg0 cleanup:(BOOL)arg1 ;
-(void)removeAllChildrenWithCleanup:(BOOL)arg0 ;
-(struct CGPoint )absolutePosition_;
-(void)visit;


@end


#endif