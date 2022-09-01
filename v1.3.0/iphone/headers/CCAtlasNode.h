// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCATLASNODE_H
#define CCATLASNODE_H


#import <Foundation/Foundation.h>

@class CCNodeRGBA;
@class CCTextureAtlas;
@protocol CCTextureProtocol;

@interface CCAtlasNode : CCNodeRGBA <CCTextureProtocol>

 {
    NSUInteger _itemsPerRow;
    NSUInteger _itemsPerColumn;
    NSUInteger _itemWidth;
    NSUInteger _itemHeight;
    _ccColorThreeB _colorUnmodified;
    BOOL _opacityModifyRGB;
    int _uniformColor;
    *ShaderUniform _mcColorUniform;
    Color<float> _mcDisplayedColor;
}


@property (retain, nonatomic) CCTextureAtlas *textureAtlas; // ivar: _textureAtlas
@property (nonatomic) _ccBlendFunc blendFunc; // ivar: _blendFunc
@property (nonatomic) _ccColorThreeB color;
@property (nonatomic) NSUInteger quadsToDraw; // ivar: _quadsToDraw
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(id)initWithTileFile:(id)arg0 tileWidth:(NSUInteger)arg1 tileHeight:(NSUInteger)arg2 itemsToRender:(NSUInteger)arg3 ;
-(id)initWithTexture:(id)arg0 tileWidth:(NSUInteger)arg1 tileHeight:(NSUInteger)arg2 itemsToRender:(NSUInteger)arg3 ;
-(void)dealloc;
-(void)calculateMaxItems;
-(void)updateAtlasValues;
-(void)draw;
-(void)setOpacity:(unsigned char)arg0 ;
-(void)setOpacityModifyRGB:(BOOL)arg0 ;
-(BOOL)doesOpacityModifyRGB;
-(void)updateOpacityModifyRGB;
-(void)updateBlendFunc;
-(void)setTexture:(id)arg0 ;
-(id)texture;
+(id)atlasWithTileFile:(id)arg0 tileWidth:(NSUInteger)arg1 tileHeight:(NSUInteger)arg2 itemsToRender:(NSUInteger)arg3 ;


@end


#endif