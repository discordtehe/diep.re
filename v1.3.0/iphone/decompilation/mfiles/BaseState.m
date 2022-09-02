@implementation BaseState

-(unsigned long long)stateId {
    r0 = *(self + 0x10);
    return r0;
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
            r0 = [CCNode node];
            r0 = [r0 retain];
            *(r19 + 0x8) = r0;
            [r0 setVisible:r2];
            *(int8_t *)(r19 + 0x28) = 0x0;
    }
    r0 = r19;
    return r0;
}

-(void)dealloc {
    r31 = r31 - 0x30;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r0 = *(self + 0x8);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x8) = 0x0;
    }
    [[&var_20 super] dealloc];
    return;
}

-(void)setupWithStateId:(unsigned long long)arg2 parameters:(void *)arg3 {
    *(self + 0x10) = arg2;
    [[[Application sharedApplication] rootNode] addChild:r2];
    return;
}

-(void)injectParameters:(void *)arg2 {
    return;
}

-(double)enterWithPreviousState:(unsigned long long)arg2 fromStack:(bool)arg3 {
    r0 = self;
    return r0;
}

-(void)changeZOrder:(unsigned long long)arg2 {
    [*(self + 0x8) setZOrder:r2];
    return;
}

-(double)leaveWithNewState:(unsigned long long)arg2 toStack:(bool)arg3 {
    r0 = self;
    return r0;
}

-(double)refresh {
    r0 = self;
    return r0;
}

-(void)finishLeave:(bool)arg2 {
    return;
}

-(void)finishEnter:(bool)arg2 {
    return;
}

-(void)finishRefresh {
    return;
}

-(void)processContextEvent:(void *)arg2 withData:(void *)arg3 {
    return;
}

-(void)destroy {
    [[[Application sharedApplication] rootNode] removeChild:r2];
    return;
}

-(void)enableInput {
    *(int8_t *)(self + 0x28) = 0x1;
    return;
}

-(bool)isBackButtonEnabled {
    r0 = *(int8_t *)(self + 0x28);
    return r0;
}

-(void)hide {
    [*(self + 0x8) setVisible:r2];
    return;
}

-(void)disableInput {
    *(int8_t *)(self + 0x28) = 0x0;
    return;
}

-(void)show {
    [*(self + 0x8) setVisible:r2];
    return;
}

-(bool)isReusable {
    return 0x0;
}

-(bool)allowDuplicates {
    return 0x0;
}

-(bool)isRootState {
    return 0x0;
}

-(bool)occupiesFullScreen {
    return 0x0;
}

-(bool)hasLowerZOrder {
    return 0x0;
}

-(void)showLoadingAnimationWithDelay:(double)arg2 shouldFade:(bool)arg3 {
    [self showLoadingAnimationWithDelay:r2 shouldFade:r3 description:r4];
    return;
}

-(void)showLoadingAnimationWithDelay:(double)arg2 shouldFade:(bool)arg3 description:(void *)arg4 {
    r3 = arg3;
    r2 = arg2;
    r0 = self;
    r31 = r31 - 0xb0;
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
    if (*(r0 + 0x18) == 0x0) {
            r21 = r3;
            r20 = r2;
            v8 = v0;
            r19 = r0;
            r0 = [LoadingWidget widget];
            *(r19 + 0x18) = r0;
            [[CCDirector sharedDirector] winSize];
            [[CCDirector sharedDirector] winSize];
            [r0 setPosition:r2];
            if (r21 != 0x0) {
                    [*(r19 + 0x18) setLoadingDescription:r2];
            }
            [*(r19 + 0x18) setVisible:0x0];
            r0 = *(r19 + 0x8);
            r2 = *(r19 + 0x18);
            [r0 addChild:r2];
            r25 = *(r19 + 0x18);
            r26 = [CCDelayTime actionWithDuration:r2];
            [CCCallBlock actionWithBlock:&var_88];
            [CCSequence actions:r26];
            [r25 runAction:r2];
            if (r20 != 0x0) {
                    r24 = @selector(runAction:);
                    r0 = objc_alloc();
                    r0 = [r0 init];
                    r0 = [r0 autorelease];
                    *(r19 + 0x20) = r0;
                    [*(r19 + 0x8) addChild:r0];
                    r19 = *(r19 + 0x20);
                    r20 = @class(CCSequence);
                    r21 = [CCDelayTime actionWithDuration:r0];
                    [CCFadeTo actionWithDuration:0x3f opacity:r3];
                    [r20 actions:r21];
                    objc_msgSend(r19, r24);
            }
    }
    return;
}

-(void)hideLoadingAnimation {
    r31 = r31 - 0x70;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = self;
    r19 = *(self + 0x20);
    if (r19 != 0x0) {
            r22 = [CCFadeTo actionWithDuration:0x0 opacity:r3];
            [CCCallBlock actionWithBlock:&var_48];
            [CCSequence actions:r22];
            [r19 runAction:r2];
    }
    else {
            r0 = *(r20 + 0x18);
            if (r0 != 0x0) {
                    [r0 removeFromParentAndCleanup:r2];
                    *(r20 + 0x18) = 0x0;
            }
    }
    return;
}

@end