@implementation MenuHourlyRewardView

-(void)setupLayout {
    return;
}

-(void)createCoinParticles {
    r0 = [CCParticleSystemQuad particleWithFile:@"CoinsExplosion.plist"];
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_coinParticles));
    *(self + r20) = r0;
    [self->_coinSprite position];
    [*(self + r20) setPosition:@"CoinsExplosion.plist"];
    [*(self + r20) life];
    [*(self + r20) lifeVar];
    *(int32_t *)(int64_t *)&self->_coinParticlesDuration = s8 + s0;
    return;
}

-(double)onEnterWithPreviousState:(unsigned long long)arg2 fromStack:(bool)arg3 {
    r0 = self;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_popUpAnimationDuration));
    *(int32_t *)(r0 + r20) = 0x0;
    if ((arg3 & 0x1) == 0x0) {
            sub_10004f17c(r0);
            asm { fcvt       s0, d0 };
            *(int32_t *)(r19 + r20) = s0;
            r0 = [r19 coinAnimation];
            asm { fcvt       d0, s0 };
    }
    return r0;
}

-(void)coinParticles {
    [*(self + sign_extend_64(*(int32_t *)ivar_offset(_innerFrame))) addChild:r2];
    return;
}

-(void)coinAnimation {
    r19 = self;
    r23 = &@selector(_decodeSizeForVideoSize:layerSize:scale:);
    r0 = *(r23 + 0xfd0);
    asm { fcvt       d0, s0 };
    r20 = @selector(actionWithDuration:);
    objc_msgSend(r0, r20);
    [CCCallFunc actionWithTarget:r19 selector:@selector(coinParticles)];
    r0 = *(r23 + 0xfd0);
    asm { fcvt       d0, s0 };
    objc_msgSend(r0, r20);
    [CCSequence actions:r2];
    [r19 runAction:r2];
    return;
}

@end