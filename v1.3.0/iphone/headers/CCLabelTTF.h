// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCLABELTTF_H
#define CCLABELTTF_H


#import <Foundation/Foundation.h>

@class CCSprite;
@protocol CCLabelProtocol;

@interface CCLabelTTF : CCSprite <CCLabelProtocol>

 {
    BOOL _isTextureDirty;
    CGSize _dimensions;
    int _hAlignment;
    int _vAlignment;
    NSString *_fontName;
    CGFloat _fontSize;
    NSString *_string;
}


@property (retain, nonatomic) NSString *fontName;
@property (nonatomic) float fontSize;
@property (nonatomic) CGSize dimensions;
@property (nonatomic) int horizontalAlignment;
@property (nonatomic) int verticalAlignment;
@property (nonatomic) BOOL strokeEnabled; // ivar: _strokeEnabled
@property (nonatomic) _ccColorThreeB strokeColor; // ivar: _strokeColor
@property (nonatomic) _ccColorThreeB textFillColor; // ivar: _textFillColor
@property (nonatomic) BOOL shadowEnabled; // ivar: _shadowEnabled
@property (nonatomic) float shadowOpacity; // ivar: _shadowOpacity
@property (nonatomic) float shadowBlur; // ivar: _shadowBlur
@property (nonatomic) CGSize shadowOffset; // ivar: _shadowOffset
@property (nonatomic) _ccColorThreeB shadowColor; // ivar: _shadowColor
@property (nonatomic) float strokeSize; // ivar: _strokeSize
@property (nonatomic) int lineBreakMode; // ivar: _lineBreakMode
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithString:(id)arg0 dimensions:(struct CGSize )arg1 alignment:(int)arg2 fontName:(id)arg3 fontSize:(CGFloat)arg4 ;
-(id)initWithString:(id)arg0 dimensions:(struct CGSize )arg1 alignment:(int)arg2 lineBreakMode:(int)arg3 fontName:(id)arg4 fontSize:(CGFloat)arg5 ;
-(id)init;
-(id)initWithString:(id)arg0 fontName:(id)arg1 fontSize:(CGFloat)arg2 ;
-(id)initWithString:(id)arg0 fontName:(id)arg1 fontSize:(CGFloat)arg2 dimensions:(struct CGSize )arg3 hAlignment:(int)arg4 ;
-(id)initWithString:(id)arg0 fontName:(id)arg1 fontSize:(CGFloat)arg2 dimensions:(struct CGSize )arg3 hAlignment:(int)arg4 vAlignment:(int)arg5 ;
-(id)initWithString:(id)arg0 fontName:(id)arg1 fontSize:(CGFloat)arg2 dimensions:(struct CGSize )arg3 hAlignment:(int)arg4 lineBreakMode:(int)arg5 ;
-(id)initWithString:(id)arg0 fontName:(id)arg1 fontSize:(CGFloat)arg2 dimensions:(struct CGSize )arg3 hAlignment:(int)arg4 vAlignment:(int)arg5 lineBreakMode:(int)arg6 ;
-(void)setString:(id)arg0 ;
-(id)string;
-(id)getFontName:(id)arg0 ;
-(void)dealloc;
-(void)visit;
-(BOOL)stringContainsEmoji:(id)arg0 ;
-(BOOL)updateTexture;
-(id)initWithString:(id)arg0 fontDefinition:(id)arg1 ;
-(void)enableShadowWithOffset:(struct CGSize )arg0 opacity:(float)arg1 blur:(float)arg2 updateImage:(unsigned char)arg3 ;
-(void)disableShadowAndUpdateImage:(unsigned char)arg0 ;
-(void)enableStrokeWithColor:(struct _ccColorThreeB )arg0 size:(float)arg1 updateImage:(unsigned char)arg2 ;
-(void)disableStrokeAndUpdateImage:(unsigned char)arg0 ;
-(void)setFontFillColor:(struct _ccColorThreeB )arg0 updateImage:(unsigned char)arg1 ;
-(id)prepareFontDefinitionAndAdjustForResolution:(unsigned char)arg0 ;
-(id)getFontDefinition;
-(void)setFontDefinition:(id)arg0 ;
-(void)didLoadFromCCB;
-(struct CGSize )contentSize;
-(struct _ccV3F_C4B_T2F_Quad )quad;
-(struct CGRect )textureRect;
-(BOOL)textureRectRotated;
-(id)textureAtlas;
+(id)labelWithString:(id)arg0 dimensions:(struct CGSize )arg1 alignment:(int)arg2 fontName:(id)arg3 fontSize:(CGFloat)arg4 ;
+(id)labelWithString:(id)arg0 dimensions:(struct CGSize )arg1 alignment:(int)arg2 lineBreakMode:(int)arg3 fontName:(id)arg4 fontSize:(CGFloat)arg5 ;
+(id)labelWithString:(id)arg0 dimensions:(struct CGSize )arg1 hAlignment:(int)arg2 fontName:(id)arg3 fontSize:(CGFloat)arg4 ;
+(id)labelWithString:(id)arg0 dimensions:(struct CGSize )arg1 hAlignment:(int)arg2 lineBreakMode:(int)arg3 fontName:(id)arg4 fontSize:(CGFloat)arg5 ;
+(id)labelWithString:(id)arg0 dimensions:(struct CGSize )arg1 hAlignment:(int)arg2 vAlignment:(int)arg3 lineBreakMode:(int)arg4 fontName:(id)arg5 fontSize:(CGFloat)arg6 ;
+(id)labelWithString:(id)arg0 dimensions:(struct CGSize )arg1 hAlignment:(int)arg2 vAlignment:(int)arg3 fontName:(id)arg4 fontSize:(CGFloat)arg5 ;
+(id)allocWithZone:(struct _NSZone *)arg0 ;
+(id)labelWithString:(id)arg0 fontDefinition:(id)arg1 ;
+(id)labelWithString:(id)arg0 fontName:(id)arg1 fontSize:(CGFloat)arg2 ;
+(id)labelWithString:(id)arg0 fontName:(id)arg1 fontSize:(CGFloat)arg2 dimensions:(struct CGSize )arg3 hAlignment:(int)arg4 ;
+(id)labelWithString:(id)arg0 fontName:(id)arg1 fontSize:(CGFloat)arg2 dimensions:(struct CGSize )arg3 hAlignment:(int)arg4 vAlignment:(int)arg5 ;
+(id)labelWithString:(id)arg0 fontName:(id)arg1 fontSize:(CGFloat)arg2 dimensions:(struct CGSize )arg3 hAlignment:(int)arg4 lineBreakMode:(int)arg5 ;
+(id)labelWithString:(id)arg0 fontName:(id)arg1 fontSize:(CGFloat)arg2 dimensions:(struct CGSize )arg3 hAlignment:(int)arg4 vAlignment:(int)arg5 lineBreakMode:(int)arg6 ;


@end


#endif