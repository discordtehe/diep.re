// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol CCESRenderer_MCPlatform


-(id)initWithDepthFormat:(unsigned int)arg0 withPixelFormat:(unsigned int)arg1 withSharegroup:(id)arg2 withMultiSampling:(BOOL)arg3 withNumberOfSamples:(unsigned int)arg4 ;
-(BOOL)resizeFromLayer:(id)arg0 ;
-(id)context;
-(struct CGSize )backingSize;
-(unsigned int)colorRenderBuffer;
-(unsigned int)defaultFrameBuffer;
-(unsigned int)msaaFrameBuffer;
-(unsigned int)msaaColorBuffer;

@end

