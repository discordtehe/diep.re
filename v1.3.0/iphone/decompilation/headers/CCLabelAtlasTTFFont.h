// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCLABELATLASTTFFONT_H
#define CCLABELATLASTTFFONT_H


#import <Foundation/Foundation.h>

@class CCNodeRGBA;
@class CCGLProgram;
@class CCTexture2D;
@protocol CCLabelProtocol;

@interface CCLabelAtlasTTFFont : CCNodeRGBA <CCLabelProtocol>

 {
    *ShaderUniform _mcEmissionUniform;
    *Shader _mcShader8;
    *Shader _mcShader32;
    *Shader _mcEmissionOldShader;
    CCGLProgram *_32BitShaderProgram;
    CCGLProgram *_8BitShaderProgram;
    TextRenderJobData _renderData;
    vector<mc::Renderer::Mesh, std::__1::allocator<mc::Renderer::Mesh> > Meshes;
    BOOL _isTextureDirty;
    basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > _fontName;
    CGSize _meshSize;
    BOOL _opacityModifyRGB;
    int _emissionUniform;
    float _emissionColor;
    BOOL _emissionEnabled;
    CCGLProgram *_emissionOldShaderProgram;
}


@property (retain, nonatomic) NSString *fontName;
@property (nonatomic) BOOL strokeEnabled; // ivar: _strokeEnabled
@property (nonatomic) _ccColorThreeB strokeColor; // ivar: _strokeColor
@property (nonatomic) _ccColorThreeB textFillColor; // ivar: _textFillColor
@property (nonatomic) BOOL shadowEnabled; // ivar: _shadowEnabled
@property (nonatomic) float shadowOpacity; // ivar: _shadowOpacity
@property (nonatomic) float shadowBlur; // ivar: _shadowBlur
@property (nonatomic) CGSize shadowOffset; // ivar: _shadowOffset
@property (nonatomic) _ccColorThreeB shadowColor; // ivar: _shadowColor
@property (nonatomic) float strokeSize; // ivar: _strokeSize
@property (nonatomic) int lineBreakMode;
@property (retain, nonatomic) NSString *emissionShaderName; // ivar: _emissionShaderName
@property (nonatomic) CCTexture2D *texture;
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(id)initWithString:(id)arg0 fontName:(id)arg1 fontSize:(CGFloat)arg2 ;
-(id)initWithString:(id)arg0 fontName:(id)arg1 fontSize:(CGFloat)arg2 dimensions:(struct CGSize )arg3 hAlignment:(int)arg4 ;
-(id)initWithString:(id)arg0 fontName:(id)arg1 fontSize:(CGFloat)arg2 dimensions:(struct CGSize )arg3 hAlignment:(int)arg4 vAlignment:(int)arg5 ;
-(id)initWithString:(id)arg0 fontName:(id)arg1 fontSize:(CGFloat)arg2 dimensions:(struct CGSize )arg3 hAlignment:(int)arg4 lineBreakMode:(int)arg5 ;
-(id)initWithString:(id)arg0 fontName:(id)arg1 fontSize:(CGFloat)arg2 dimensions:(struct CGSize )arg3 hAlignment:(int)arg4 vAlignment:(int)arg5 lineBreakMode:(int)arg6 ;
-(id)initWithString:(id)arg0 fontDefinition:(id)arg1 ;
-(void)updateQuads;
-(void)draw;
-(void)visit;
-(void)setString:(id)arg0 ;
-(id)string;
-(void)setFontSize:(float)arg0 ;
-(float)fontSize;
-(void)setDimensions:(struct CGSize )arg0 ;
-(struct CGSize )dimensions;
-(void)setRequestedDimensions:(struct CGSize )arg0 ;
-(struct CGSize )requestedDimensions;
-(void)setHorizontalAlignment:(int)arg0 ;
-(int)horizontalAlignment;
-(void)setVerticalAlignment:(int)arg0 ;
-(int)verticalAlignment;
-(void)setForceSingleLine:(BOOL)arg0 ;
-(BOOL)forceSingleLine;
-(void)setAnchorPoint:(struct CGPoint )arg0 ;
-(struct CGSize )contentSize;
-(void)enableShadowWithOffset:(struct CGSize )arg0 opacity:(float)arg1 blur:(float)arg2 updateImage:(unsigned char)arg3 ;
-(void)disableShadowAndUpdateImage:(unsigned char)arg0 ;
-(void)enableStrokeWithColor:(struct _ccColorThreeB )arg0 size:(float)arg1 updateImage:(unsigned char)arg2 ;
-(void)disableStrokeAndUpdateImage:(unsigned char)arg0 ;
-(void)setFontFillColor:(struct _ccColorThreeB )arg0 updateImage:(unsigned char)arg1 ;
-(id)prepareFontDefinitionAndAdjustForResolution:(unsigned char)arg0 ;
-(id)getFontDefinition;
-(void)setFontDefinition:(id)arg0 ;
-(void)updateColor;
-(void)setColor:(struct _ccColorThreeB )arg0 ;
-(void)updateDisplayedColor:(struct _ccColorThreeB )arg0 ;
-(void)setOpacity:(unsigned char)arg0 ;
-(void)setOpacityModifyRGB:(BOOL)arg0 ;
-(BOOL)doesOpacityModifyRGB;
-(void)updateDisplayedOpacity:(unsigned char)arg0 ;
-(void)updateEmission;
-(void)setEmission:(struct _ccColorThreeB )arg0 ;
-(void)updateDisplayedEmission:(struct _ccColorThreeB )arg0 ;
-(void)dealloc;
+(id)labelWithString:(id)arg0 fontDefinition:(id)arg1 ;
+(id)labelWithString:(id)arg0 fontName:(id)arg1 fontSize:(CGFloat)arg2 ;
+(id)labelWithString:(id)arg0 fontName:(id)arg1 fontSize:(CGFloat)arg2 dimensions:(struct CGSize )arg3 hAlignment:(int)arg4 ;
+(id)labelWithString:(id)arg0 fontName:(id)arg1 fontSize:(CGFloat)arg2 dimensions:(struct CGSize )arg3 hAlignment:(int)arg4 vAlignment:(int)arg5 ;
+(id)labelWithString:(id)arg0 fontName:(id)arg1 fontSize:(CGFloat)arg2 dimensions:(struct CGSize )arg3 hAlignment:(int)arg4 lineBreakMode:(int)arg5 ;
+(id)labelWithString:(id)arg0 fontName:(id)arg1 fontSize:(CGFloat)arg2 dimensions:(struct CGSize )arg3 hAlignment:(int)arg4 vAlignment:(int)arg5 lineBreakMode:(int)arg6 ;


@end


#endif