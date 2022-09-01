// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCSPRITEBATCHNODE_H
#define CCSPRITEBATCHNODE_H


#import <Foundation/Foundation.h>

@class CCNodeRGBA;
@class CCGLProgram;
@class CCTextureAtlas;
@class CCArray;
@protocol CCTextureProtocol;

@interface CCSpriteBatchNode : CCNodeRGBA <CCTextureProtocol>

 {
    *ShaderUniform _mcEmissionUniform;
    Color<float> _mcEmissionColor;
    int _emissionUniform;
    float _emissionColor;
    BOOL _emissionEnabled;
    CCGLProgram *_emissionOldShaderProgram;
}


@property (retain, nonatomic) CCTextureAtlas *textureAtlas; // ivar: _textureAtlas
@property (nonatomic) _ccBlendFunc blendFunc; // ivar: _blendFunc
@property (readonly, nonatomic) CCArray *descendants; // ivar: _descendants
@property (retain, nonatomic) NSString *emissionShaderName; // ivar: _emissionShaderName
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)insertQuadFromSprite:(id)arg0 quadIndex:(NSUInteger)arg1 ;
-(void)updateQuadFromSprite:(id)arg0 quadIndex:(NSUInteger)arg1 ;
-(id)addSpriteWithoutQuad:(id)arg0 z:(NSUInteger)arg1 tag:(NSInteger)arg2 ;
-(void)updateEmission;
-(void)setEmission:(struct _ccColorThreeB )arg0 ;
-(void)updateDisplayedEmission:(struct _ccColorThreeB )arg0 ;
-(id)init;
-(id)initWithFile:(id)arg0 capacity:(NSUInteger)arg1 ;
-(id)initWithTexture:(id)arg0 capacity:(NSUInteger)arg1 ;
-(void)dealloc;
-(void)visit;
-(void)addChild:(id)arg0 z:(NSInteger)arg1 tag:(NSInteger)arg2 ;
-(void)reorderChild:(id)arg0 z:(NSInteger)arg1 ;
-(void)removeChild:(id)arg0 cleanup:(BOOL)arg1 ;
-(void)removeChildAtIndex:(NSUInteger)arg0 cleanup:(BOOL)arg1 ;
-(void)removeAllChildrenWithCleanup:(BOOL)arg0 ;
-(void)sortAllChildren;
-(void)updateAtlasIndex:(id)arg0 currentIndex:(*NSInteger)arg1 ;
-(void)swap:(NSInteger)arg0 withNewIndex:(NSInteger)arg1 ;
-(void)reorderBatch:(BOOL)arg0 ;
-(void)draw;
-(void)increaseAtlasCapacity;
-(NSUInteger)rebuildIndexInOrder:(id)arg0 atlasIndex:(NSUInteger)arg1 ;
-(NSUInteger)highestAtlasIndexInChild:(id)arg0 ;
-(NSUInteger)lowestAtlasIndexInChild:(id)arg0 ;
-(NSUInteger)atlasIndexForChild:(id)arg0 atZ:(NSInteger)arg1 ;
-(void)insertChild:(id)arg0 inAtlasAtIndex:(NSUInteger)arg1 ;
-(void)appendChild:(id)arg0 ;
-(void)removeSpriteFromAtlas:(id)arg0 ;
-(void)updateBlendFunc;
-(void)setTexture:(id)arg0 ;
-(id)texture;
+(id)batchNodeWithTexture:(id)arg0 ;
+(id)batchNodeWithTexture:(id)arg0 capacity:(NSUInteger)arg1 ;
+(id)batchNodeWithFile:(id)arg0 capacity:(NSUInteger)arg1 ;
+(id)batchNodeWithFile:(id)arg0 ;


@end


#endif