// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCALIGNMENTNODESTATIC_H
#define MCALIGNMENTNODESTATIC_H



@class CCNodeRGBA;

@interface MCAlignmentNodeStatic : CCNodeRGBA {
    BOOL _needsAlign;
}


@property (nonatomic) NSUInteger direction; // ivar: _direction
@property (nonatomic) float spacing; // ivar: _spacing
@property (nonatomic) BOOL forceCentering; // ivar: _forceCentering
@property (nonatomic) BOOL invertOrder; // ivar: _invertOrder


-(id)init;
-(id)initWithSpacing:(float)arg0 direction:(NSUInteger)arg1 ;
-(id)initWithSpacing:(float)arg0 direction:(NSUInteger)arg1 forceCentering:(BOOL)arg2 invertOrder:(BOOL)arg3 ;
-(void)align;
-(void)centerChildren;
-(struct CGSize )contentSize;
-(void)setContentSize:(struct CGSize )arg0 ;
-(void)addChild:(id)arg0 z:(NSInteger)arg1 tag:(NSInteger)arg2 ;
-(void)removeChild:(id)arg0 cleanup:(BOOL)arg1 ;
-(void)didLoadFromCCBAfterChildren;
-(void)visit;
+(id)alignmentNode;
+(id)alignmentNodeWithSpacing:(float)arg0 direction:(NSUInteger)arg1 ;
+(id)alignmentNodeWithSpacing:(float)arg0 direction:(NSUInteger)arg1 forceCentering:(BOOL)arg2 invertOrder:(BOOL)arg3 ;


@end


#endif