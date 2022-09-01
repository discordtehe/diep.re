// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCRENDERTEXTURE_H
#define CCRENDERTEXTURE_H



@class CCNode;
@class CCTexture2D;
@class CCSprite;

@interface CCRenderTexture : CCNode {
    unsigned int _FBO;
    unsigned int _depthRenderBufffer;
    int _oldFBO;
    CCTexture2D *_texture;
    int _pixelFormat;
}


@property (retain, nonatomic) CCSprite *sprite; // ivar: _sprite
@property (nonatomic) unsigned int clearFlags; // ivar: _clearFlags
@property (nonatomic) _ccColor4F clearColor; // ivar: _clearColor
@property (nonatomic) float clearDepth; // ivar: _clearDepth
@property (nonatomic) int clearStencil; // ivar: _clearStencil
@property (nonatomic) BOOL autoDraw; // ivar: _autoDraw


-(id)getUIImageAsDataFromBuffer:(int)arg0 ;
-(id)getUIImageFromBuffer;
-(id)initWithWidth:(int)arg0 height:(int)arg1 ;
-(id)initWithWidth:(int)arg0 height:(int)arg1 pixelFormat:(int)arg2 ;
-(id)initWithWidth:(int)arg0 height:(int)arg1 pixelFormat:(int)arg2 depthStencilFormat:(unsigned int)arg3 ;
-(void)dealloc;
-(void)begin;
-(void)beginWithClear:(float)arg0 g:(float)arg1 b:(float)arg2 a:(float)arg3 depth:(float)arg4 stencil:(int)arg5 flags:(unsigned int)arg6 ;
-(void)beginWithClear:(float)arg0 g:(float)arg1 b:(float)arg2 a:(float)arg3 ;
-(void)beginWithClear:(float)arg0 g:(float)arg1 b:(float)arg2 a:(float)arg3 depth:(float)arg4 ;
-(void)beginWithClear:(float)arg0 g:(float)arg1 b:(float)arg2 a:(float)arg3 depth:(float)arg4 stencil:(int)arg5 ;
-(void)end;
-(void)clear:(float)arg0 g:(float)arg1 b:(float)arg2 a:(float)arg3 ;
-(void)clearDepth:(float)arg0 ;
-(void)clearStencil:(int)arg0 ;
-(void)visit;
-(void)draw;
-(struct CGImage *)newCGImage;
-(id)getUIImage;
-(struct CGSize )contentSize;
-(void)setContentSize:(struct CGSize )arg0 ;
+(id)renderTextureWithWidth:(int)arg0 height:(int)arg1 pixelFormat:(int)arg2 depthStencilFormat:(unsigned int)arg3 ;
+(id)renderTextureWithWidth:(int)arg0 height:(int)arg1 pixelFormat:(int)arg2 ;
+(id)renderTextureWithWidth:(int)arg0 height:(int)arg1 ;


@end


#endif