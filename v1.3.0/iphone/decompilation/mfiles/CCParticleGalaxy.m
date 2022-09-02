@implementation CCParticleGalaxy

-(void *)init {
    r0 = [self initWithTotalParticles:0xc8];
    return r0;
}

-(void *)initWithTotalParticles:(unsigned long long)arg2 {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_20 super] initWithTotalParticles:arg2];
    r19 = r0;
    if (r0 != 0x0) {
            *(int32_t *)(int64_t *)&r19->_duration = 0xffffffffbf800000;
            [r19 setEmitterMode:0x0];
            [r19 setGravity:0x0];
            [r19 setSpeed:0x0];
            [r19 setSpeedVar:0x0];
            [r19 setRadialAccel:0x0];
            [r19 setRadialAccelVar:0x0];
            [r19 setTangentialAccel:0x0];
            s0 = 0x0;
            [r19 setTangentialAccelVar:0x0];
            *(int32_t *)(int64_t *)&r19->_angle = 0x42b40000;
            *(int32_t *)(int64_t *)&r19->_angleVar = 0x43b40000;
            [[CCDirector sharedDirector] winSize];
            [r19 setPosition:0x0];
            [r19 setPosVar:0x0];
            *(int32_t *)(r19 + sign_extend_64(*(int32_t *)ivar_offset(_life))) = 0x40800000;
            *(int32_t *)(int64_t *)&r19->_lifeVar = 0x3f800000;
            *(int32_t *)(int64_t *)&r19->_startSize = 0x42140000;
            *(int32_t *)(int64_t *)&r19->_startSizeVar = 0x41200000;
            *(int32_t *)(int64_t *)&r19->_endSize = 0xffffffffbf800000;
            asm { ucvtf      s0, x9 };
            r8 = 0x10116b000;
            asm { fdiv       s0, s0, s1 };
            *(int32_t *)(r19 + sign_extend_64(*(int32_t *)(r8 + 0xc18))) = s0;
            *(int128_t *)(int64_t *)&r19->_startColor = *(int128_t *)0x100ba6210;
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_startColorVar));
            *(int128_t *)(r19 + r8) = 0x0;
            *(int128_t *)(0x8 + r19 + r8) = 0x0;
            *(int128_t *)(int64_t *)&r19->_endColor = *(int128_t *)0x100ba6200;
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_endColorVar));
            *(int128_t *)(r19 + r8) = 0x0;
            *(int128_t *)(0x8 + r19 + r8) = 0x0;
            [r19 setTexture:[[CCTextureCache sharedTextureCache] addImage:@"fire.png"]];
            [r19 setBlendAdditive:0x1];
    }
    r0 = r19;
    return r0;
}

@end