// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCLABELBMFONT_H
#define CCLABELBMFONT_H


#import <Foundation/Foundation.h>

@class CCNodeRGBA;
@class CCBMFontConfiguration;
@class CCSprite;
@class CCTextureAtlas;
@class CCTexture2D;
@class CCSpriteBatchNode;
@protocol CCLabelProtocol;
@protocol CCTextureProtocol;

@interface CCLabelBMFont : CCNodeRGBA <CCLabelProtocol, CCTextureProtocol>

 {
    NSString *_string;
    NSString *_fntFile;
    NSString *_initialString;
    float _width;
    CCBMFontConfiguration *_configuration;
    BOOL _opacityModifyRGB;
    CCSprite *_reusedChar;
    CCTextureAtlas *_textureAtlas;
    CCTexture2D *_texture;
}


@property (nonatomic) CCSpriteBatchNode *batchNode; // ivar: _batchNode
@property (nonatomic) _ccBlendFunc blendFunc; // ivar: _blendFunc
@property (readonly, nonatomic) int alignment; // ivar: _alignment
@property (retain, nonatomic) NSString *fntFile;
@property (nonatomic) unsigned char opacity;
@property (nonatomic) _ccColorThreeB color;
@property (nonatomic) CGPoint imageOffset; // ivar: _imageOffset
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(id)initWithString:(id)arg0 fntFile:(id)arg1 ;
-(id)initWithString:(id)arg0 fntFile:(id)arg1 width:(float)arg2 alignment:(int)arg3 ;
-(id)initWithString:(id)arg0 fntFile:(id)arg1 width:(float)arg2 alignment:(int)arg3 imageOffset:(struct CGPoint )arg4 ;
-(void)dealloc;
-(void)updateLabel;
-(void)alignText;
-(int)kerningAmountForFirst:(unsigned short)arg0 second:(unsigned short)arg1 ;
-(void)createFontChars;
-(id)string;
-(void)setCString:(char *)arg0 ;
-(void)setString:(id)arg0 ;
-(void)setString:(id)arg0 updateLabel:(BOOL)arg1 ;
-(struct _ccColorThreeB )displayedColor;
-(unsigned char)displayedOpacity;
-(struct _ccColorThreeB )emission;
-(struct _ccColorThreeB )displayedEmission;
-(BOOL)doesOpacityModifyRGB;
-(void)updateDisplayedOpacity:(unsigned char)arg0 ;
-(void)updateDisplayedColor:(struct _ccColorThreeB )arg0 ;
-(void)updateDisplayedEmission:(struct _ccColorThreeB )arg0 ;
-(void)setAnchorPoint:(struct CGPoint )arg0 ;
-(void)setWidth:(float)arg0 ;
-(void)updateBlendFunc;
-(void)setTexture:(id)arg0 ;
-(id)texture;
-(void)draw;
+(BOOL)accessInstanceVariablesDirectly;
+(void)purgeCachedData;
+(id)labelWithString:(id)arg0 fntFile:(id)arg1 ;
+(id)labelWithString:(id)arg0 fntFile:(id)arg1 width:(float)arg2 alignment:(int)arg3 ;
+(id)labelWithString:(id)arg0 fntFile:(id)arg1 width:(float)arg2 alignment:(int)arg3 imageOffset:(struct CGPoint )arg4 ;


@end


#endif