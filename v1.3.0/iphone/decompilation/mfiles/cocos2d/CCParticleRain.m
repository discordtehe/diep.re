@implementation CCParticleRain

-(void *)init {
    r0 = [self initWithTotalParticles:0x3e8];
    return r0;
}

-(void *)initWithTotalParticles:(unsigned long long)arg2 {
    r31 = r31 - 0x60;
    var_40 = d9;
    stack[-72] = d8;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_50 super] initWithTotalParticles:arg2];
    r19 = r0;
    if (r0 != 0x0) {
            *(int32_t *)(int64_t *)&r19->_duration = 0xffffffffbf800000;
            [r19 setEmitterMode:0x0];
            [r19 setGravity:0x0];
            [r19 setRadialAccel:0x0];
            [r19 setRadialAccelVar:0x0];
            [r19 setTangentialAccel:0x0];
            [r19 setTangentialAccelVar:0x0];
            [r19 setSpeed:0x0];
            [r19 setSpeedVar:0x0];
            *(int32_t *)(int64_t *)&r19->_angle = 0xffffffffc2b40000;
            *(int32_t *)(int64_t *)&r19->_angleVar = 0x40a00000;
            [[CCDirector sharedDirector] winSize];
            [[CCDirector sharedDirector] winSize];
            [r19 setPosition:0x0];
            [[CCDirector sharedDirector] winSize];
            [r19 setPosVar:0x0];
            *(int32_t *)(int64_t *)&r19->_life = 0x40900000;
            *(int32_t *)(int64_t *)&r19->_lifeVar = 0x0;
            *(int32_t *)(int64_t *)&r19->_startSize = 0x40800000;
            *(int32_t *)(int64_t *)&r19->_startSizeVar = 0x40000000;
            *(int32_t *)(int64_t *)&r19->_endSize = 0xffffffffbf800000;
            *(int32_t *)(int64_t *)&r19->_emissionRate = 0x41a00000;
            *(int128_t *)(int64_t *)&r19->_startColor = *(int128_t *)0x100ba6290;
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_startColorVar));
            *(int128_t *)(r19 + r8) = 0x0;
            *(int128_t *)(0x8 + r19 + r8) = 0x0;
            *(int128_t *)(int64_t *)&r19->_endColor = *(int128_t *)0x100ba62a0;
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_endColorVar));
            *(int128_t *)(r19 + r8) = 0x0;
            *(int128_t *)(0x8 + r19 + r8) = 0x0;
            [r19 setTexture:[[CCTextureCache sharedTextureCache] addImage:@"fire.png"]];
            [r19 setBlendAdditive:0x0];
    }
    r0 = r19;
    return r0;
}

@end