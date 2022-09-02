@implementation CCTransitionProgress

-(void)onExit {
    [self removeChildByTag:0xc001 cleanup:0x1];
    [[&var_20 super] onExit];
    return;
}

-(void)onEnter {
    r31 = r31 - 0x70;
    var_40 = d11;
    stack[-72] = d10;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    [[&var_50 super] onEnter];
    [r19 setupTransition];
    [[CCDirector sharedDirector] winSize];
    r0 = @class(CCRenderTexture);
    asm { fcvtzs     w2, d0 };
    asm { fcvtzs     w3, d1 };
    r0 = [r0 renderTextureWithWidth:r2 height:r3];
    r20 = r0;
    [[r0 sprite] setAnchorPoint:r2];
    [r20 setPosition:r2];
    [r20 setAnchorPoint:r2];
    [r20 clear:r2 g:r3 b:r4 a:r5];
    [r20 begin];
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_sceneToBeModified));
    [*(r19 + r21) visit];
    [r20 end];
    if (*(r19 + r21) == r19->_outScene) {
            [r19 hideOutShowIn];
    }
    r2 = r20;
    r20 = [r19 progressTimerNodeWithRenderTexture:r2];
    r22 = [CCProgressFromTo actionWithDuration:r2 from:r3 to:r4];
    [CCCallFunc actionWithTarget:r19 selector:@selector(finish)];
    [r20 runAction:[CCSequence actions:r22]];
    [r19 addChild:r20 z:0x2 tag:0xc001];
    return;
}

-(void)sceneOrder {
    *(int8_t *)(int64_t *)&self->_inSceneOnTop = 0x0;
    return;
}

-(void)setupTransition {
    self->_sceneToBeModified = self->_outScene;
    *(int32_t *)(int64_t *)&self->_from = 0x42c80000;
    *(int32_t *)(int64_t *)&self->_to = 0x0;
    return;
}

-(void *)progressTimerNodeWithRenderTexture:(void *)arg2 {
    return 0x0;
}

@end