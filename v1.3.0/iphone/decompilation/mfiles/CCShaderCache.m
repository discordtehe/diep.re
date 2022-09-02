@implementation CCShaderCache

+(void *)sharedShaderCache {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = *0x1011d4690;
    if (r0 == 0x0) {
            r0 = [CCShaderCache alloc];
            r0 = [r0 init];
            *0x1011d4690 = r0;
    }
    return r0;
}

-(void)dealloc {
    [*(self + 0x8) release];
    [[&var_20 super] dealloc];
    return;
}

+(void)purgeSharedShaderCache {
    [*0x1011d4690 release];
    *0x1011d4690 = 0x0;
    return;
}

+(void *)alloc {
    r0 = [[&var_10 super] alloc];
    return r0;
}

+(void)purgeSharedTextureCache {
    [*0x1011d4690 release];
    *0x1011d4690 = 0x0;
    return;
}

-(void *)init {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] init];
    r19 = r0;
    if (r0 != 0x0) {
            *(r19 + 0x8) = [[NSMutableDictionary alloc] initWithCapacity:0xa];
            [r19 loadDefaultShaders];
    }
    r0 = r19;
    return r0;
}

-(void *)programForKey:(void *)arg2 {
    r0 = *(self + 0x8);
    r0 = [r0 objectForKey:r2];
    return r0;
}

-(void)addProgram:(void *)arg2 forKey:(void *)arg3 {
    [*(self + 0x8) setObject:r2 forKey:r3];
    return;
}

-(void)rebuildShaders {
    r31 = r31 - 0x130;
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
    r19 = self;
    var_110 = q0;
    r20 = *(self + 0x8);
    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
    if (r0 != 0x0) {
            r22 = r0;
            r25 = *var_110;
            do {
                    r28 = 0x0;
                    do {
                            if (*var_110 != r25) {
                                    objc_enumerationMutation(r20);
                            }
                            [[*(r19 + 0x8) objectForKey:r2] rebuildShader];
                            r28 = r28 + 0x1;
                    } while (r28 < r22);
                    r0 = [r20 countByEnumeratingWithState:r2 objects:r3 count:r4];
                    r22 = r0;
            } while (r0 != 0x0);
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

-(void)loadDefaultShaders {
    r0 = @class(CCGLProgram);
    r0 = [r0 alloc];
    r0 = [r0 initWithVertexShaderByteArray:*0x1011ac218 fragmentShaderByteArray:*0x1011ac210];
    [r0 addAttribute:@"a_position" index:0x0];
    [r0 addAttribute:@"a_color" index:0x1];
    [r0 addAttribute:@"a_texCoord" index:0x2];
    [r0 link];
    [r0 updateUniforms];
    [*(self + 0x8) setObject:r0 forKey:@"ShaderPositionTextureColor"];
    [r0 release];
    r0 = @class(CCGLProgram);
    r0 = [r0 alloc];
    r0 = [r0 initWithVertexShaderByteArray:*0x1011ac218 fragmentShaderByteArray:*0x1011ac220];
    [r0 addAttribute:@"a_position" index:0x0];
    [r0 addAttribute:@"a_color" index:0x1];
    [r0 addAttribute:@"a_texCoord" index:0x2];
    [r0 link];
    [r0 updateUniforms];
    [*(self + 0x8) setObject:r0 forKey:@"ShaderPositionTextureColorAlphaTest"];
    [r0 release];
    r0 = @class(CCGLProgram);
    r0 = [r0 alloc];
    r2 = *0x1011ac1e8;
    r0 = [r0 initWithVertexShaderByteArray:r2 fragmentShaderByteArray:*0x1011ac1e0];
    [r0 addAttribute:r2 index:0x0];
    [r0 addAttribute:@"a_color" index:0x1];
    [r0 link];
    [r0 updateUniforms];
    [*(self + 0x8) setObject:r0 forKey:@"ShaderPositionColor"];
    [r0 release];
    r0 = [CCGLProgram alloc];
    r0 = [r0 initWithVertexShaderByteArray:*0x1011ac1f8 fragmentShaderByteArray:*0x1011ac1f0];
    [r0 addAttribute:@"a_position" index:0x0];
    [r0 addAttribute:@"a_texCoord" index:0x2];
    [r0 link];
    [r0 updateUniforms];
    [*(self + 0x8) setObject:r0 forKey:@"ShaderPositionTexture"];
    [r0 release];
    r0 = [CCGLProgram alloc];
    r0 = [r0 initWithVertexShaderByteArray:*0x1011ac230 fragmentShaderByteArray:*0x1011ac228];
    [r0 addAttribute:@"a_position" index:0x0];
    [r0 addAttribute:@"a_texCoord" index:0x2];
    [r0 link];
    [r0 updateUniforms];
    [*(self + 0x8) setObject:r0 forKey:@"ShaderPositionTexture_uColor"];
    [r0 release];
    r0 = [CCGLProgram alloc];
    r0 = [r0 initWithVertexShaderByteArray:*0x1011ac208 fragmentShaderByteArray:*0x1011ac200];
    [r0 addAttribute:@"a_position" index:0x0];
    [r0 addAttribute:@"a_color" index:0x1];
    [r0 addAttribute:@"a_texCoord" index:0x2];
    [r0 link];
    [r0 updateUniforms];
    [*(self + 0x8) setObject:r0 forKey:@"ShaderPositionTextureA8Color"];
    [r0 release];
    r0 = @class(CCGLProgram);
    r0 = [r0 alloc];
    r0 = [r0 initWithVertexShaderByteArray:*0x1011ac1d8 fragmentShaderByteArray:*0x1011ac1d0];
    [r0 addAttribute:@"aVertex" index:0x0];
    [r0 link];
    [r0 updateUniforms];
    [*(self + 0x8) setObject:r0 forKey:@"ShaderPosition_uColor"];
    [r0 release];
    r0 = @class(CCGLProgram);
    r0 = [r0 alloc];
    r0 = [r0 initWithVertexShaderByteArray:*0x1011ac240 fragmentShaderByteArray:*0x1011ac238];
    [r0 addAttribute:@"a_position" index:0x0];
    [r0 addAttribute:@"a_texCoord" index:0x2];
    [r0 addAttribute:@"a_color" index:0x1];
    [r0 link];
    [r0 updateUniforms];
    [*(self + 0x8) setObject:r0 forKey:@"ShaderPositionLengthTextureColor"];
    [r0 release];
    r0 = [CCGLProgram alloc];
    r0 = [r0 initWithVertexShaderByteArray:*0x1011ac250 fragmentShaderByteArray:*0x1011ac248];
    [r0 addAttribute:@"a_position" index:0x0];
    [r0 addAttribute:@"a_color" index:0x1];
    [r0 addAttribute:@"a_texCoord" index:0x2];
    [r0 link];
    [r0 updateUniforms];
    [*(self + 0x8) setObject:r0 forKey:@"ShaderPositionTextureColor_uEmission"];
    [r0 release];
    return;
}

@end