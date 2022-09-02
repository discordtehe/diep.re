// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCES2RENDERER_MCPLATFORM_H
#define CCES2RENDERER_MCPLATFORM_H


#import <Foundation/Foundation.h>
#import <OpenGLES/OpenGLES.h>

@protocol CCESRenderer_MCPlatform;

@interface CCES2Renderer_MCPlatform : NSObject <CCESRenderer_MCPlatform>

 {
    int _backingWidth;
    int _backingHeight;
    unsigned int _samplesToUse;
    BOOL _multiSampling;
    unsigned int _depthFormat;
    unsigned int _pixelFormat;
    unsigned int _depthBuffer;
}


@property (readonly, nonatomic) unsigned int colorRenderbuffer; // ivar: _colorRenderbuffer
@property (readonly, nonatomic) unsigned int defaultFramebuffer; // ivar: _defaultFramebuffer
@property (readonly, nonatomic) unsigned int msaaFramebuffer; // ivar: _msaaFramebuffer
@property (readonly, nonatomic) unsigned int msaaColorbuffer; // ivar: _msaaColorbuffer
@property (readonly, nonatomic) EAGLContext *context; // ivar: _context
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithDepthFormat:(unsigned int)arg0 withPixelFormat:(unsigned int)arg1 withSharegroup:(id)arg2 withMultiSampling:(BOOL)arg3 withNumberOfSamples:(unsigned int)arg4 ;
-(BOOL)resizeFromLayer:(id)arg0 ;
-(struct CGSize )backingSize;
-(unsigned int)colorRenderBuffer;
-(unsigned int)defaultFrameBuffer;
-(unsigned int)msaaFrameBuffer;
-(unsigned int)msaaColorBuffer;
-(void)dealloc;


@end


#endif