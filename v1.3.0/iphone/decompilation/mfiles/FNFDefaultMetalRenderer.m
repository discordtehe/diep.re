@implementation FNFDefaultMetalRenderer

-(bool)shouldRenderWhilePlaybackPaused {
    return 0x0;
}

-(void)processPixelBuffer:(struct __CVBuffer *)arg2 {
    return;
}

-(void *)initWithDevice:(void *)arg2 {
    r31 = r31 - 0x90;
    var_50 = r28;
    stack[-88] = r27;
    var_40 = r26;
    stack[-72] = r25;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r0 = [[&var_60 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            r0 = [r19 newCommandQueue];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_commandQueue));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            r0 = [r19 newBufferWithLength:0x40 options:0x0];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_geometry));
            r8 = *(r20 + r9);
            var_78 = r9;
            *(r20 + r9) = r0;
            [r8 release];
            r21 = 0x0;
            *(int32_t *)(int64_t *)&r20->_rotation = 0x0;
            r25 = (int64_t *)&r20->_colorConversion;
            do {
                    r0 = [r19 newBufferWithBytes:[FNFColorConversion matrix3x4ForType:r21] length:0x30 options:0x0];
                    r8 = *(r25 + r21 * 0x8);
                    *(r25 + r21 * 0x8) = r0;
                    [r8 release];
                    r21 = r21 + 0x1;
            } while (r21 != 0x2);
            r0 = [NSBundle bundleForClass:[r20 class]];
            r0 = [r0 retain];
            r21 = r0;
            r22 = [[r0 pathForResource:@"FNFDefaultMetalRenderer" ofType:@"metallib"] retain];
            r23 = [r19 newLibraryWithFile:r22 error:&var_68];
            r26 = [var_68 retain];
            r0 = [MTLRenderPipelineDescriptor new];
            r24 = r0;
            [r0 setLabel:@"FNFMetalPipeline"];
            r0 = [r24 colorAttachments];
            r0 = [r0 retain];
            r27 = r0;
            r0 = [r0 objectAtIndexedSubscript:0x0];
            r0 = [r0 retain];
            [r0 setPixelFormat:0x50];
            [r0 release];
            [r27 release];
            r28 = [r23 newFunctionWithName:@"defaultVertex"];
            [r24 setVertexFunction:r28];
            [r28 release];
            r27 = [r23 newFunctionWithName:@"defaultFragment"];
            [r24 setFragmentFunction:r27];
            [r27 release];
            r28 = [r19 newRenderPipelineStateWithDescriptor:r24 error:&var_70];
            r27 = [var_70 retain];
            [r26 release];
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_pipeline));
            r0 = *(r20 + r8);
            *(r20 + r8) = r28;
            [r0 release];
            r0 = [MTLSamplerDescriptor new];
            r25 = r0;
            [r0 setSAddressMode:0x0];
            [r25 setTAddressMode:0x0];
            [r25 setMinFilter:0x0];
            [r25 setMagFilter:0x1];
            r0 = [r19 newSamplerStateWithDescriptor:r25];
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_sampler));
            r8 = *(r20 + r9);
            *(r20 + r9) = r0;
            [r8 release];
            [FNFDefaultMetalRenderer _updateGeometryBufferWithPresentationRect:*(r20 + var_78) buffer:&var_70];
            [r27 release];
            [r25 release];
            [r24 release];
            [r23 release];
            [r22 release];
            [r21 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(void).cxx_destruct {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = (int64_t *)&self->_colorConversion;
    r21 = 0x8;
    do {
            objc_storeStrong(r20 + r21, 0x0);
            r21 = r21 - 0x8;
    } while (r21 != -0x8);
    objc_storeStrong((int64_t *)&r19->_geometry, 0x0);
    objc_storeStrong((int64_t *)&r19->_sampler, 0x0);
    objc_storeStrong((int64_t *)&r19->_pipeline, 0x0);
    objc_storeStrong((int64_t *)&r19->_commandQueue, 0x0);
    return;
}

+(struct CGSize)_updateVertexArrayWithPresentationRect:(struct CGSize)arg2 videoGravity:(void *)arg3 layerBounds:(struct CGRect)arg4 transform:(struct CGAffineTransform)arg5 {
    memcpy(&r5, &arg5, 0x8);
    memcpy(&r4, &arg4, 0x8);
    memcpy(&r2, &arg2, 0x8);
    r1 = _cmd;
    r31 = r31 - 0xc0;
    var_50 = d15;
    stack[-88] = d14;
    var_40 = d13;
    stack[-72] = d12;
    var_30 = d11;
    stack[-56] = d10;
    var_20 = d9;
    stack[-40] = d8;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = r3;
    v10 = v5;
    v11 = v4;
    v12 = v3;
    v13 = v2;
    v8 = v1;
    v9 = v0;
    r0 = [r2 retain];
    r19 = r0;
    if (**_AVLayerVideoGravityResizeAspect != r0) {
            if (**_AVLayerVideoGravityResizeAspectFill != r19) {
                    v8 = v14;
            }
            else {
                    CGRectApplyAffineTransform(&var_B0, r1);
                    asm { fdiv       d0, d9, d2 };
                    asm { fdiv       d1, d8, d3 };
                    if (d1 > d0) {
                            asm { fdiv       d8, d1, d0 };
                    }
                    else {
                            v8 = v14;
                            asm { fdiv       d14, d0, d1 };
                    }
            }
    }
    else {
            v3 = v10;
            r0 = CGRectApplyAffineTransform(&var_80, r1);
            AVMakeRectWithAspectRatioInsideRect(r0, r1);
            asm { fdiv       d14, d2, d10 };
            asm { fdiv       d8, d3, d11 };
    }
    r0 = [r19 release];
    return r0;
}

+(void)_updateGeometryBufferWithPresentationRect:(struct CGSize)arg2 buffer:(void *)arg3 {
    memcpy(&r2, &arg2, 0x8);
    r0 = r2;
    asm { fcvt       s8, d0 };
    asm { fcvt       s9, d1 };
    r0 = [r0 retain];
    r0 = objc_retainAutorelease(r0);
    r20 = [r0 contents];
    [r0 release];
    *(int32_t *)r20 = s8;
    *(int32_t *)(r20 + 0x4) = -s9;
    *(r20 + 0x8) = d0;
    *(int32_t *)(r20 + 0x10) = s8;
    *(int32_t *)(r20 + 0x14) = s9;
    *(r20 + 0x18) = *double_value_5_26354E_minus_315;
    *(int32_t *)(r20 + 0x20) = -s8;
    *(int32_t *)(r20 + 0x24) = -s9;
    *(r20 + 0x28) = *0x100b9b6c0;
    *(int32_t *)(r20 + 0x30) = -s8;
    *(int32_t *)(r20 + 0x34) = s9;
    *(r20 + 0x38) = 0x0;
    return;
}

-(bool)drawFrame:(bool)arg2 presentationRect:(struct CGSize)arg3 lumaTexture:(void *)arg4 chromaTexture:(void *)arg5 drawable:(void *)arg6 videoGravity:(void *)arg7 rotation:(double)arg8 transform:(struct CGAffineTransform)arg9 colorConversion:(long long)arg10 {
    var_0 = arg8;
    r5 = arg5;
    r4 = arg4;
    memcpy(&r3, &arg3, 0x8);
    r31 = r31 - 0xd0;
    var_70 = d11;
    stack[-120] = d10;
    var_60 = d9;
    stack[-104] = d8;
    var_50 = r28;
    stack[-88] = r27;
    var_40 = r26;
    stack[-72] = r25;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r24 = r7;
    v8 = v1;
    v9 = v0;
    r26 = arg2;
    r23 = self;
    r25 = [r3 retain];
    r20 = [r4 retain];
    r21 = [r5 retain];
    r28 = [r6 retain];
    if (r21 != 0x0) {
            var_A8 = r25;
            var_B8 = var_0;
            asm { fcvt       s0, d10 };
            r25 = (int64_t *)&r23->_rotation;
            *(int32_t *)r25 = s0;
            if (r26 != 0x0) {
                    r26 = @class(FNFDefaultMetalRenderer);
                    r0 = [r21 layer];
                    r29 = r29;
                    r0 = [r0 retain];
                    [r0 bounds];
                    [r26 _updateVertexArrayWithPresentationRect:r28 videoGravity:&var_A0 layerBounds:r4 transform:r5];
                    [r0 release];
                    [FNFDefaultMetalRenderer _updateGeometryBufferWithPresentationRect:r23->_geometry buffer:&var_A0];
            }
            r24 = [[MTLRenderPassDescriptor renderPassDescriptor] retain];
            r26 = [[r21 texture] retain];
            r0 = [r24 colorAttachments];
            r0 = [r0 retain];
            r22 = r0;
            r0 = [r0 objectAtIndexedSubscript:0x0];
            r0 = [r0 retain];
            [r0 setTexture:r26];
            [r0 release];
            [r22 release];
            [r26 release];
            r0 = [r24 colorAttachments];
            r0 = [r0 retain];
            r19 = r0;
            r0 = [r0 objectAtIndexedSubscript:0x0];
            r0 = [r0 retain];
            [r0 setClearColor:0x0];
            [r0 release];
            [r19 release];
            r0 = [r24 colorAttachments];
            r0 = [r0 retain];
            r19 = r0;
            r0 = [r0 objectAtIndexedSubscript:0x0];
            r0 = [r0 retain];
            r26 = 0x1;
            [r0 setStoreAction:0x1];
            [r0 release];
            [r19 release];
            r0 = [r24 colorAttachments];
            r0 = [r0 retain];
            r19 = r0;
            r0 = [r0 objectAtIndexedSubscript:0x0];
            r0 = [r0 retain];
            [r0 setLoadAction:0x2];
            [r0 release];
            [r19 release];
            r0 = r23->_commandQueue;
            r0 = [r0 commandBuffer];
            r0 = [r0 retain];
            r27 = r0;
            [r0 setLabel:@"FNFDefaultRendererCommandBuffer"];
            r0 = [r27 renderCommandEncoderWithDescriptor:r24];
            r0 = [r0 retain];
            [r0 setRenderPipelineState:r23->_pipeline];
            [r0 setVertexBuffer:r23->_geometry offset:0x0 atIndex:0x0];
            [r0 setVertexBytes:r25 length:0x4 atIndex:0x1];
            [r0 setFragmentBuffer:*((int64_t *)&r23->_colorConversion + var_B8 * 0x8) offset:0x0 atIndex:0x0];
            r25 = var_A8;
            [r0 setFragmentTexture:r25 atIndex:0x0];
            [r0 setFragmentTexture:r20 atIndex:0x1];
            [r0 setFragmentSamplerState:r23->_sampler atIndex:0x0];
            [r0 setFrontFacingWinding:0x1];
            [r0 drawPrimitives:0x4 vertexStart:0x0 vertexCount:0x4];
            [r0 endEncoding];
            [r27 presentDrawable:r21];
            [r27 commit];
            r28 = r28;
            [r0 release];
            [r27 release];
            [r24 release];
    }
    else {
            r26 = 0x0;
    }
    [r28 release];
    [r21 release];
    [r20 release];
    [r25 release];
    r0 = r26;
    return r0;
}

@end