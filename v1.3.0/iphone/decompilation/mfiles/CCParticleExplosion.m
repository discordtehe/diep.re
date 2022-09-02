@implementation CCParticleExplosion

-(void *)init {
    r0 = [self initWithTotalParticles:0x2bc];
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
            *(int32_t *)(r19 + sign_extend_64(*(int32_t *)ivar_offset(_duration))) = 0x3dcccccd;
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
            *(int32_t *)(int64_t *)&r19->_life = 0x40a00000;
            *(int32_t *)(int64_t *)&r19->_lifeVar = 0x40000000;
            *(int32_t *)(int64_t *)&r19->_startSize = 0x41700000;
            *(int32_t *)(int64_t *)&r19->_startSizeVar = 0x41200000;
            *(int32_t *)(int64_t *)&r19->_endSize = 0xffffffffbf800000;
            asm { ucvtf      s0, x8 };
            asm { fdiv       s0, s0, s1 };
            *(int32_t *)(int64_t *)&r19->_emissionRate = s0;
            *(int128_t *)(int64_t *)&r19->_startColor = *(int128_t *)0x100ba6250;
            *(int128_t *)(r19 + sign_extend_64(*(int32_t *)ivar_offset(_startColorVar))) = *(int128_t *)0x100ba6240;
            *(int128_t *)(int64_t *)&r19->_endColor = *(int128_t *)0x100ba6240;
            *(int128_t *)(int64_t *)&r19->_endColorVar = *(int128_t *)0x100ba6240;
            [r19 setTexture:[[CCTextureCache sharedTextureCache] addImage:@"fire.png"]];
            [r19 setBlendAdditive:0x0];
    }
    r0 = r19;
    return r0;
}

@end