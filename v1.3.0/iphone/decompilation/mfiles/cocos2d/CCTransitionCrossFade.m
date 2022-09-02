@implementation CCTransitionCrossFade

-(void *)init {
    r0 = [[&var_10 super] init];
    return r0;
}

-(void)draw {
    return;
}

-(void)onExit {
    [self removeChildByTag:0xfadefade cleanup:0x1];
    [[&var_20 super] onExit];
    return;
}

-(void)onEnter {
    r19 = self;
    var_90 = self;
    [[&var_80 super] onEnter];
    [[CCDirector sharedDirector] winSize];
    var_88 = [CCLayerColor layerWithColor:0x0];
    r0 = @class(CCRenderTexture);
    asm { fcvtzs     w22, d9 };
    asm { fcvtzs     w25, d10 };
    r0 = [r0 renderTextureWithWidth:r22 height:r25];
    r23 = r0;
    [[r0 sprite] setAnchorPoint:r22];
    [r23 setPosition:r22];
    [r23 setAnchorPoint:r22];
    [r23 begin];
    [r19->_inScene visit];
    [r23 end];
    r0 = [CCRenderTexture renderTextureWithWidth:r22 height:r25];
    [[r0 sprite] setAnchorPoint:r22];
    [r0 setPosition:r22];
    [r0 setAnchorPoint:r22];
    [r0 begin];
    [var_90->_outScene visit];
    [r0 end];
    [[r23 sprite] setBlendFunc:0x100000001];
    [[r0 sprite] setBlendFunc:0x30300000302];
    [var_88 addChild:r23];
    [var_88 addChild:r0];
    [[r23 sprite] setOpacity:0xff];
    [[r0 sprite] setOpacity:0xff];
    r20 = [CCFadeTo actionWithDuration:0x0 opacity:r25];
    [CCCallFunc actionWithTarget:var_90 selector:@selector(hideOutShowIn)];
    [CCCallFunc actionWithTarget:var_90 selector:@selector(finish)];
    [[r0 sprite] runAction:[CCSequence actions:r20]];
    [var_90 addChild:var_88 z:0x2 tag:0xfadefade];
    return;
}

@end