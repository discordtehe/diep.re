// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCTEXTURE2D_H
#define CCTEXTURE2D_H


#import <Foundation/Foundation.h>


@interface CCTexture2D : NSObject {
    BOOL _hasMipmaps;
    BOOL _aliasTextureParams;
    shared_ptr<mc::Renderer::Texture> MCTexturePointer;
}


@property (readonly, nonatomic) int pixelFormat; // ivar: _format
@property (readonly, nonatomic) NSUInteger pixelsWide; // ivar: _width
@property (readonly, nonatomic) NSUInteger pixelsHigh; // ivar: _height
@property (readonly, nonatomic) unsigned int name; // ivar: _name
@property (readonly, nonatomic) CGSize contentSizeInPixels; // ivar: _size
@property (nonatomic) float maxS; // ivar: _maxS
@property (nonatomic) float maxT; // ivar: _maxT
@property (readonly, nonatomic) BOOL hasPremultipliedAlpha; // ivar: _hasPremultipliedAlpha
@property (nonatomic) int resolutionType; // ivar: _resolutionType


-(id)initWithMCTextRendererPropertiesAsync:(struct MCTextRendererProperties *)arg0 drawWidth:(float)arg1 drawHeight:(float)arg2 ;
-(id)initWithMCTextRendererProperties:(struct MCTextRendererProperties *)arg0 drawWidth:(float)arg1 drawHeight:(float)arg2 ;
-(id)initWithStringMCTextRenderer:(id)arg0 fontDef:(id)arg1 ;
-(id)initWithStringMCTextRenderer:(id)arg0 dimensions:(struct CGSize )arg1 hAlignment:(int)arg2 vAlignment:(int)arg3 lineBreakMode:(int)arg4 fontName:(id)arg5 fontSize:(float)arg6 ;
-(void)updateWithData:(*void)arg0 pixelsWide:(NSUInteger)arg1 pixelsHigh:(NSUInteger)arg2 ;
-(void)queueTextureUpdate:(struct function<void (void **, int *, int *)> )arg0 cleanup:(struct function<void ()> )arg1 ;
-(id)initWithEncodedImageData:(id)arg0 resolutionType:(int)arg1 textureScale:(float)arg2 ;
-(id)initWithEncodedImageDataAsync:(id)arg0 resolutionType:(int)arg1 textureScale:(float)arg2 ;
-(id)initWithString:(id)arg0 dimensions:(struct CGSize )arg1 alignment:(int)arg2 lineBreakMode:(int)arg3 fontName:(id)arg4 fontSize:(CGFloat)arg5 ;
-(id)initWithString:(id)arg0 dimensions:(struct CGSize )arg1 alignment:(int)arg2 fontName:(id)arg3 fontSize:(CGFloat)arg4 ;
-(void)forcePremultipliedAlpha;
-(NSUInteger)bitsPerPixelForFormat;
-(id)stringForFormat;
-(void)generateMipmap;
-(void)setTexParameters:(struct _ccTexParams *)arg0 ;
-(void)setAliasTexParameters;
-(void)setAntiAliasTexParameters;
-(id)initWithString:(id)arg0 fontDef:(id)arg1 ;
-(id)initWithString:(id)arg0 dimensions:(struct CGSize )arg1 hAlignment:(int)arg2 vAlignment:(int)arg3 lineBreakMode:(int)arg4 fontName:(id)arg5 fontSize:(float)arg6 ;
-(id)initWithString:(id)arg0 fontName:(id)arg1 fontSize:(CGFloat)arg2 ;
-(id)initWithString:(id)arg0 fontName:(id)arg1 fontSize:(CGFloat)arg2 dimensions:(struct CGSize )arg3 hAlignment:(int)arg4 vAlignment:(int)arg5 ;
-(id)initWithString:(id)arg0 fontName:(id)arg1 fontSize:(CGFloat)arg2 dimensions:(struct CGSize )arg3 hAlignment:(int)arg4 vAlignment:(int)arg5 lineBreakMode:(int)arg6 ;
-(id)initFromMCTexture:(struct shared_ptr<mc::Renderer::Texture> )arg0 textureScale:(float)arg1 ;
-(id)initWithData:(*void)arg0 pixelFormat:(int)arg1 pixelsWide:(NSUInteger)arg2 pixelsHigh:(NSUInteger)arg3 contentSize:(struct CGSize )arg4 ;
-(id)initWithData:(*void)arg0 pixelFormat:(int)arg1 pixelsWide:(NSUInteger)arg2 pixelsHigh:(NSUInteger)arg3 contentSize:(struct CGSize )arg4 textureScale:(float)arg5 ;
-(void)bind;
-(void)releaseData:(*void)arg0 ;
-(*void)keepData:(*void)arg0 length:(NSUInteger)arg1 ;
-(void)dealloc;
-(id)description;
-(struct CGSize )contentSize;
+(void)setDefaultAlphaPixelFormat:(int)arg0 ;
+(int)defaultAlphaPixelFormat;
+(NSUInteger)bitsPerPixelForFormat:(int)arg0 ;


@end


#endif