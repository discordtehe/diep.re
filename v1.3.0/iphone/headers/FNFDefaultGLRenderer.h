// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FNFDEFAULTGLRENDERER_H
#define FNFDEFAULTGLRENDERER_H


#import <Foundation/Foundation.h>

@class FNFGLProgram;
@protocol FNFPlayerGLRenderer;

@interface FNFDefaultGLRenderer : NSObject <FNFPlayerGLRenderer>

 {
    FNFGLProgram *_glProgram;
    unsigned int _vertexArrayObject;
    unsigned int _vertexBuffer;
    int _uniforms;
    int _backingWidth;
    int _backingHeight;
    CGFloat _rotation;
    *float _colorConversion;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(BOOL)shouldRenderWhilePlaybackPaused;
-(BOOL)setupGLState;
-(BOOL)_setupBuffers;
-(void)processPixelBuffer:(struct __CVBuffer *)arg0 ;
-(BOOL)drawFrame:(BOOL)arg0 presentationRect:(struct CGSize )arg1 backingWidth:(int)arg2 backingHeight:(int)arg3 frameBuffer:(unsigned int)arg4 videoGravity:(id)arg5 rotation:(CGFloat)arg6 layerBounds:(struct CGRect )arg7 transform:(struct CGAffineTransform )arg8 colorConversion:(NSInteger)arg9 ;
-(void)_configureVertexAttributes;
-(BOOL)_updateVertexArrayWithPresentationRect:(struct CGSize )arg0 videoGravity:(id)arg1 layerBounds:(struct CGRect )arg2 transform:(struct CGAffineTransform )arg3 ;
-(void)restoreGLState;
-(void)invalidate;
-(BOOL)_loadShaders;


@end


#endif