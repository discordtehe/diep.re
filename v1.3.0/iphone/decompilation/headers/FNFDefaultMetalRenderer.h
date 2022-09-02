// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FNFDEFAULTMETALRENDERER_H
#define FNFDEFAULTMETALRENDERER_H

@protocol MTLCommandQueue, MTLRenderPipelineState, MTLSamplerState, MTLBuffer;

#import <Foundation/Foundation.h>

@protocol FNFPlayerMetalRenderer;

@interface FNFDefaultMetalRenderer : NSObject <FNFPlayerMetalRenderer>

 {
    id<MTLCommandQueue> *_commandQueue;
    id<MTLRenderPipelineState> *_pipeline;
    id<MTLSamplerState> *_sampler;
    id<MTLBuffer> *_geometry;
    id<MTLBuffer>" _colorConversion;
    float _rotation;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithDevice:(id)arg0 ;
-(BOOL)shouldRenderWhilePlaybackPaused;
-(void)processPixelBuffer:(struct __CVBuffer *)arg0 ;
-(BOOL)drawFrame:(BOOL)arg0 presentationRect:(struct CGSize )arg1 lumaTexture:(id)arg2 chromaTexture:(id)arg3 drawable:(id)arg4 videoGravity:(id)arg5 rotation:(CGFloat)arg6 transform:(struct CGAffineTransform )arg7 colorConversion:(NSInteger)arg8 ;
+(struct CGSize )_updateVertexArrayWithPresentationRect:(struct CGSize )arg0 videoGravity:(id)arg1 layerBounds:(struct CGRect )arg2 transform:(struct CGAffineTransform )arg3 ;
+(void)_updateGeometryBufferWithPresentationRect:(struct CGSize )arg0 buffer:(id)arg1 ;


@end


#endif