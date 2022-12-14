@implementation FBAdAudioMuteButton

-(void)drawRect:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    var_50 = d13;
    stack[-88] = d12;
    r31 = r31 + 0xffffffffffffffa0;
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
    v8 = v3;
    v9 = v2;
    v10 = v1;
    v11 = v0;
    r19 = self;
    r21 = UIGraphicsGetCurrentContext();
    r20 = [[UIColor colorWithUInt:0x0 withAlpha:r3] retain];
    CGContextSaveGState(r21);
    CGRectGetMidY(CGRectGetMidX(CGContextBeginTransparencyLayer(r21, 0x0)));
    r22 = [[UIBezierPath bezierPathWithArcCenter:0x1 radius:r3 startAngle:r4 endAngle:r5 clockwise:r6] retain];
    [r20 setFill];
    [r22 fill];
    CGContextEndTransparencyLayer(r21);
    CGContextRestoreGState(r21);
    r8 = &@selector(drawUnmute:);
    if ([r19 state] == 0x4) {
            if (!CPU_FLAGS & E) {
                    r8 = &@selector(drawUnmute:);
            }
            else {
                    r8 = &@selector(drawMute:);
            }
    }
    objc_msgSend(r19, *r8);
    [r22 release];
    [r20 release];
    return;
}

+(void)initialize {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r0 = objc_getClass("FBAdAudioMuteButton");
    if (r0 != 0x0) {
            r20 = r0;
            r0 = NSStringFromClass(r19);
            r29 = r29;
            r0 = [r0 retain];
            r21 = r0;
            if (([r0 hasPrefix:@"NSKVONotifying"] & 0x1) != 0x0) {
                    [r21 release];
            }
            else {
                    [r21 release];
                    if (r20 != r19) {
                            r20 = [NSStringFromClass(r20) retain];
                            r0 = NSStringFromClass(r19);
                            r0 = [r0 retain];
                            r21 = [[NSString stringWithFormat:@"%@ is a final class and cannot be subclassed. %@"] retain];
                            [r0 release];
                            [r20 release];
                            objc_exception_throw([[[NSException exceptionWithName:@"FBFinalClassViolationException" reason:r21 userInfo:0x0] retain] autorelease]);
                    }
            }
    }
    return;
}

+(void *)audioMuteButton {
    r0 = [FBAdAudioMuteButton buttonWithType:0x0];
    return r0;
}

-(void)drawMute:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = self;
    r31 = r31 - 0xd0;
    r29 = &var_10;
    r0 = UIGraphicsGetCurrentContext();
    r19 = r0;
    r8 = &@class(MCConfigurationData);
    r0 = *(r8 + 0x700);
    r8 = &@selector(_decodeSizeForVideoSize:layerSize:scale:);
    r1 = *(r8 + 0xd80);
    r0 = objc_msgSend(r0, r1);
    r0 = [r0 retain];
    r0 = r19;
    CGContextSaveGState(r0);
    r0 = r19;
    r1 = 0x0;
    CGContextBeginTransparencyLayer(r0, r1);
    r8 = &@selector(getTemplateForKey:);
    r22 = *(r8 + 0xab8);
    r0 = r21;
    r1 = r22;
    objc_msgSend(r0, r1);
    r0 = r21;
    r1 = r22;
    objc_msgSend(r0, r1);
    d0 = d8 + d2;
    r0 = r21;
    r1 = r22;
    objc_msgSend(r0, r1);
    r0 = r21;
    r1 = r22;
    objc_msgSend(r0, r1);
    d0 = d8 + d3;
    r0 = r21;
    r1 = r22;
    objc_msgSend(r0, r1);
    r0 = r21;
    r1 = r22;
    objc_msgSend(r0, r1);
    r26 = &@class(ADCTransitionalContainer);
    r0 = *(r26 + 0xa60);
    r8 = &@selector(clearTempLog:WithCompletionBlock:);
    r1 = *(r8 + 0xa00);
    r0 = objc_msgSend(r0, r1);
    r0 = [r0 retain];
    r8 = 0x100bfa000;
    d0 = *(r8 + 0x580);
    d0 = d15 * d0;
    asm { fdiv       d0, d0, d10 };
    d0 = d12 + d0;
    r8 = 0x100bfa000;
    d1 = *(r8 + 0x588);
    asm { fdiv       d1, d1, d10 };
    r8 = &@selector(clearColorsForFlag:context:);
    r24 = *(r8 + 0xc10);
    r1 = r24;
    objc_msgSend(r0, r1);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0x590);
    asm { fdiv       d0, d0, d10 };
    d1 = *(r8 + 0x500);
    asm { fdiv       d1, d1, d10 };
    r8 = &@selector(clearColorsForFlag:context:);
    r22 = *(r8 + 0xc18);
    r0 = r21;
    r1 = r22;
    objc_msgSend(r0, r1);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0x598);
    asm { fdiv       d0, d0, d10 };
    d1 = *(r8 + 0x5a0);
    asm { fdiv       d1, d1, d10 };
    d2 = *(r8 + 0x5a8);
    asm { fdiv       d2, d2, d10 };
    d3 = *(r8 + 0x5b0);
    asm { fdiv       d3, d3, d10 };
    d4 = *(r8 + 0x5b8);
    asm { fdiv       d4, d4, d10 };
    d5 = *(r8 + 0x5c0);
    asm { fdiv       d5, d5, d10 };
    r8 = &@selector(clearTempLog:WithCompletionBlock:);
    r23 = *(r8 + 0xa08);
    r0 = r21;
    r1 = r23;
    objc_msgSend(r0, r1);
    r8 = 0x100bf3000;
    d0 = *(r8 + 0x30);
    asm { fdiv       d0, d0, d10 };
    r8 = 0x100bfa000;
    d1 = *(r8 + 0x5c8);
    asm { fdiv       d1, d1, d10 };
    d2 = *(r8 + 0x5d0);
    asm { fdiv       d2, d2, d10 };
    d3 = *(r8 + 0x5d8);
    asm { fdiv       d3, d3, d10 };
    d4 = *(r8 + 0x5e0);
    asm { fdiv       d4, d4, d10 };
    d5 = *(r8 + 0x5e8);
    asm { fdiv       d5, d5, d10 };
    r0 = r21;
    r1 = r23;
    objc_msgSend(r0, r1);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0x5f0);
    asm { fdiv       d0, d0, d10 };
    d1 = *(r8 + 0x5f8);
    asm { fdiv       d1, d1, d10 };
    r0 = r21;
    r1 = r22;
    objc_msgSend(r0, r1);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0x600);
    asm { fdiv       d0, d0, d10 };
    d1 = *(r8 + 0x608);
    asm { fdiv       d1, d1, d10 };
    d2 = *(r8 + 0x610);
    asm { fdiv       d2, d2, d10 };
    d3 = *(r8 + 0x618);
    asm { fdiv       d3, d3, d10 };
    d4 = *(r8 + 0x620);
    asm { fdiv       d4, d4, d10 };
    d5 = *(r8 + 0x628);
    asm { fdiv       d5, d5, d10 };
    r0 = r21;
    r1 = r23;
    objc_msgSend(r0, r1);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0x630);
    asm { fdiv       d0, d0, d10 };
    d1 = *(r8 + 0x638);
    asm { fdiv       d1, d1, d10 };
    r0 = r21;
    r1 = r22;
    objc_msgSend(r0, r1);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0x640);
    asm { fdiv       d0, d0, d10 };
    d1 = *(r8 + 0x648);
    asm { fdiv       d1, d1, d10 };
    r0 = r21;
    r1 = r22;
    objc_msgSend(r0, r1);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0x650);
    asm { fdiv       d0, d0, d10 };
    d1 = *(r8 + 0x658);
    asm { fdiv       d1, d1, d10 };
    r0 = r21;
    r1 = r22;
    objc_msgSend(r0, r1);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0x660);
    asm { fdiv       d0, d0, d10 };
    d0 = *(r8 + 0x668);
    asm { fdiv       d0, d0, d10 };
    d0 = *(r8 + 0x670);
    asm { fdiv       d0, d0, d10 };
    d0 = *(r8 + 0x678);
    asm { fdiv       d0, d0, d10 };
    d0 = *(r8 + 0x680);
    asm { fdiv       d0, d0, d10 };
    r0 = r21;
    r1 = r23;
    objc_msgSend(r0, r1);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0x688);
    asm { fdiv       d0, d0, d10 };
    r0 = r21;
    r1 = r22;
    objc_msgSend(r0, r1);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0x690);
    asm { fdiv       d0, d0, d10 };
    d1 = *(r8 + 0x698);
    asm { fdiv       d1, d1, d10 };
    d1 = *(r8 + 0x6a0);
    asm { fdiv       d1, d1, d10 };
    d1 = *(r8 + 0x6a8);
    asm { fdiv       d1, d1, d10 };
    r0 = r21;
    r1 = r23;
    objc_msgSend(r0, r1);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0x6b0);
    asm { fdiv       d0, d0, d10 };
    d1 = *(r8 + 0x6b8);
    asm { fdiv       d1, d1, d10 };
    d2 = *(r8 + 0x6c0);
    asm { fdiv       d2, d2, d10 };
    d3 = *(r8 + 0x6c8);
    asm { fdiv       d3, d3, d10 };
    d3 = *(r8 + 0x6d0);
    asm { fdiv       d3, d3, d10 };
    r0 = r21;
    r1 = r23;
    objc_msgSend(r0, r1);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0x6d8);
    asm { fdiv       d0, d0, d10 };
    d1 = *(r8 + 0x6e0);
    asm { fdiv       d1, d1, d10 };
    r0 = r21;
    r1 = r22;
    objc_msgSend(r0, r1);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0x6e8);
    asm { fdiv       d0, d0, d10 };
    d1 = *(r8 + 0x6f0);
    asm { fdiv       d1, d1, d10 };
    r0 = r21;
    r1 = r22;
    objc_msgSend(r0, r1);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0x6f8);
    asm { fdiv       d0, d0, d10 };
    d1 = *(r8 + 0x700);
    asm { fdiv       d1, d1, d10 };
    d2 = *(r8 + 0x708);
    asm { fdiv       d2, d2, d10 };
    d3 = *(r8 + 0x710);
    asm { fdiv       d3, d3, d10 };
    d4 = *(r8 + 0x718);
    d4 = d15 * d4;
    asm { fdiv       d4, d4, d10 };
    d4 = d12 + d4;
    d5 = *(r8 + 0x720);
    asm { fdiv       d5, d5, d10 };
    r0 = r21;
    r1 = r23;
    objc_msgSend(r0, r1);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0x728);
    asm { fdiv       d0, d0, d10 };
    d1 = *(r8 + 0x730);
    asm { fdiv       d1, d1, d10 };
    d2 = *(r8 + 0x738);
    asm { fdiv       d2, d2, d10 };
    d2 = *(r8 + 0x740);
    asm { fdiv       d2, d2, d10 };
    d2 = *(r8 + 0x748);
    asm { fdiv       d2, d2, d10 };
    d2 = *(r8 + 0x750);
    asm { fdiv       d2, d2, d10 };
    r0 = r21;
    r1 = r23;
    objc_msgSend(r0, r1);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0x758);
    asm { fdiv       d0, d0, d10 };
    d1 = *(r8 + 0x760);
    asm { fdiv       d1, d1, d10 };
    r0 = r21;
    r1 = r22;
    objc_msgSend(r0, r1);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0x768);
    asm { fdiv       d0, d0, d10 };
    d1 = *(r8 + 0x770);
    asm { fdiv       d1, d1, d10 };
    d2 = *(r8 + 0x778);
    asm { fdiv       d2, d2, d10 };
    d3 = *(r8 + 0x780);
    asm { fdiv       d3, d3, d10 };
    d4 = *(r8 + 0x788);
    asm { fdiv       d4, d4, d10 };
    d5 = *(r8 + 0x790);
    asm { fdiv       d5, d5, d10 };
    r0 = r21;
    r1 = r23;
    objc_msgSend(r0, r1);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0x798);
    asm { fdiv       d0, d0, d10 };
    d0 = *(r8 + 0x7a0);
    asm { fdiv       d0, d0, d10 };
    d0 = *(r8 + 0x7a8);
    asm { fdiv       d0, d0, d10 };
    d0 = *(r8 + 0x7b0);
    asm { fdiv       d0, d0, d10 };
    d0 = *(r8 + 0x7b8);
    asm { fdiv       d0, d0, d10 };
    d0 = *(r8 + 0x7c0);
    asm { fdiv       d0, d0, d10 };
    r0 = r21;
    r1 = r23;
    objc_msgSend(r0, r1);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0x7c8);
    asm { fdiv       d0, d0, d10 };
    r0 = r21;
    r1 = r22;
    objc_msgSend(r0, r1);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0x7d0);
    asm { fdiv       d0, d0, d10 };
    d1 = *(r8 + 0x7d8);
    asm { fdiv       d1, d1, d10 };
    d2 = *(r8 + 0x7e0);
    asm { fdiv       d2, d2, d10 };
    d2 = *(r8 + 0x7e8);
    asm { fdiv       d2, d2, d10 };
    d2 = *(r8 + 0x7f0);
    asm { fdiv       d2, d2, d10 };
    r0 = r21;
    r1 = r23;
    objc_msgSend(r0, r1);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0x7f8);
    asm { fdiv       d0, d0, d10 };
    d1 = *(r8 + 0x800);
    asm { fdiv       d1, d1, d10 };
    r0 = r21;
    r1 = r22;
    objc_msgSend(r0, r1);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0x808);
    asm { fdiv       d0, d0, d10 };
    d1 = *(r8 + 0x810);
    asm { fdiv       d1, d1, d10 };
    r0 = r21;
    r1 = r22;
    objc_msgSend(r0, r1);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0x818);
    asm { fdiv       d0, d0, d10 };
    d1 = *(r8 + 0x820);
    asm { fdiv       d1, d1, d10 };
    d2 = *(r8 + 0x828);
    asm { fdiv       d2, d2, d10 };
    d3 = *(r8 + 0x830);
    asm { fdiv       d3, d3, d10 };
    d4 = *(r8 + 0x838);
    asm { fdiv       d4, d4, d10 };
    d5 = *(r8 + 0x840);
    asm { fdiv       d5, d5, d10 };
    r0 = r21;
    r1 = r23;
    objc_msgSend(r0, r1);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0x848);
    asm { fdiv       d0, d0, d10 };
    d1 = *(r8 + 0x850);
    asm { fdiv       d1, d1, d10 };
    r0 = r21;
    r1 = r22;
    objc_msgSend(r0, r1);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0x858);
    asm { fdiv       d0, d0, d10 };
    d1 = *(r8 + 0x860);
    asm { fdiv       d1, d1, d10 };
    d2 = *(r8 + 0x868);
    asm { fdiv       d2, d2, d10 };
    d3 = *(r8 + 0x870);
    asm { fdiv       d3, d3, d10 };
    d4 = *(r8 + 0x878);
    asm { fdiv       d4, d4, d10 };
    d5 = *(r8 + 0x880);
    asm { fdiv       d5, d5, d10 };
    r0 = r21;
    r1 = r23;
    objc_msgSend(r0, r1);
    r0 = r21;
    r1 = r22;
    objc_msgSend(r0, r1);
    r8 = &@selector(clearTempLog:WithCompletionBlock:);
    r25 = *(r8 + 0xa10);
    r0 = r21;
    r1 = r25;
    objc_msgSend(r0, r1);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0x888);
    asm { fdiv       d0, d0, d10 };
    d0 = *(r8 + 0x890);
    d0 = d11 * d0;
    asm { fdiv       d0, d0, d10 };
    d8 = d13 + d0;
    r0 = r21;
    r1 = r24;
    objc_msgSend(r0, r1);
    r0 = r21;
    r1 = r22;
    objc_msgSend(r0, r1);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0x898);
    asm { fdiv       d0, d0, d10 };
    d0 = *(r8 + 0x8a0);
    asm { fdiv       d0, d0, d10 };
    r0 = r21;
    r1 = r22;
    objc_msgSend(r0, r1);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0x8a8);
    asm { fdiv       d0, d0, d10 };
    d1 = *(r8 + 0x8b0);
    asm { fdiv       d1, d1, d10 };
    d2 = *(r8 + 0x8b8);
    asm { fdiv       d2, d2, d10 };
    d3 = *(r8 + 0x8c0);
    asm { fdiv       d3, d3, d10 };
    d4 = *(r8 + 0x8c8);
    asm { fdiv       d4, d4, d10 };
    r8 = 0x404d000000000000;
    d5 = r8;
    asm { fdiv       d5, d5, d10 };
    r0 = r21;
    r1 = r23;
    objc_msgSend(r0, r1);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0x8d0);
    asm { fdiv       d0, d0, d10 };
    d0 = *(r8 + 0x8d8);
    asm { fdiv       d0, d0, d10 };
    d0 = *(r8 + 0x8e0);
    asm { fdiv       d0, d0, d10 };
    d0 = *(r8 + 0x8e8);
    asm { fdiv       d0, d0, d10 };
    d0 = *(r8 + 0x8f0);
    asm { fdiv       d0, d0, d10 };
    r0 = r21;
    r1 = r23;
    objc_msgSend(r0, r1);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0x8f8);
    asm { fdiv       d0, d0, d10 };
    r0 = r21;
    r1 = r22;
    objc_msgSend(r0, r1);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0x900);
    asm { fdiv       d0, d0, d10 };
    d1 = *(r8 + 0x908);
    asm { fdiv       d1, d1, d10 };
    r0 = r21;
    r1 = r22;
    objc_msgSend(r0, r1);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0x910);
    asm { fdiv       d0, d0, d10 };
    d1 = *(r8 + 0x918);
    asm { fdiv       d1, d1, d10 };
    d2 = *(r8 + 0x920);
    asm { fdiv       d2, d2, d10 };
    d3 = *(r8 + 0x928);
    asm { fdiv       d3, d3, d10 };
    d4 = *(r8 + 0x930);
    asm { fdiv       d4, d4, d10 };
    d5 = *(r8 + 0x938);
    asm { fdiv       d5, d5, d10 };
    r0 = r21;
    r1 = r23;
    objc_msgSend(r0, r1);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0x940);
    asm { fdiv       d0, d0, d10 };
    d0 = *(r8 + 0x948);
    asm { fdiv       d0, d0, d10 };
    d0 = *(r8 + 0x950);
    asm { fdiv       d0, d0, d10 };
    d0 = *(r8 + 0x958);
    asm { fdiv       d0, d0, d10 };
    d0 = *(r8 + 0x960);
    asm { fdiv       d0, d0, d10 };
    r0 = r21;
    r1 = r23;
    objc_msgSend(r0, r1);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0x968);
    asm { fdiv       d0, d0, d10 };
    r0 = r21;
    r1 = r22;
    objc_msgSend(r0, r1);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0x970);
    asm { fdiv       d0, d0, d10 };
    d0 = *(r8 + 0x978);
    asm { fdiv       d0, d0, d10 };
    d0 = *(r8 + 0x980);
    asm { fdiv       d0, d0, d10 };
    d0 = *(r8 + 0x988);
    asm { fdiv       d0, d0, d10 };
    d0 = *(r8 + 0x990);
    asm { fdiv       d0, d0, d10 };
    d0 = *(r8 + 0x998);
    asm { fdiv       d0, d0, d10 };
    r0 = r21;
    r1 = r23;
    objc_msgSend(r0, r1);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0x9a0);
    asm { fdiv       d0, d0, d10 };
    d0 = *(r8 + 0x9a8);
    asm { fdiv       d0, d0, d10 };
    r0 = r21;
    r1 = r22;
    objc_msgSend(r0, r1);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0x9b0);
    asm { fdiv       d0, d0, d10 };
    r0 = r21;
    r1 = r22;
    objc_msgSend(r0, r1);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0x9b8);
    asm { fdiv       d0, d0, d10 };
    d0 = *(r8 + 0x9c0);
    asm { fdiv       d0, d0, d10 };
    d0 = *(r8 + 0x9c8);
    asm { fdiv       d0, d0, d10 };
    d0 = *(r8 + 0x9d0);
    asm { fdiv       d0, d0, d10 };
    d0 = *(r8 + 0x9d8);
    asm { fdiv       d0, d0, d10 };
    r0 = r21;
    r1 = r23;
    objc_msgSend(r0, r1);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0x9e0);
    asm { fdiv       d0, d0, d10 };
    d0 = *(r8 + 0x9e8);
    asm { fdiv       d0, d0, d10 };
    d0 = *(r8 + 0x9f0);
    asm { fdiv       d0, d0, d10 };
    d0 = *(r8 + 0x9f8);
    asm { fdiv       d0, d0, d10 };
    d0 = *(r8 + 0xa00);
    asm { fdiv       d0, d0, d10 };
    r0 = r21;
    r1 = r23;
    objc_msgSend(r0, r1);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0xa08);
    asm { fdiv       d0, d0, d10 };
    r0 = r21;
    r1 = r22;
    objc_msgSend(r0, r1);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0xa10);
    asm { fdiv       d0, d0, d10 };
    d1 = *(r8 + 0xa18);
    asm { fdiv       d1, d1, d10 };
    r0 = r21;
    r1 = r22;
    objc_msgSend(r0, r1);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0xa20);
    asm { fdiv       d0, d0, d10 };
    d1 = *(r8 + 0xa28);
    asm { fdiv       d1, d1, d10 };
    d1 = *(r8 + 0xa30);
    asm { fdiv       d1, d1, d10 };
    d1 = *(r8 + 0xa38);
    asm { fdiv       d1, d1, d10 };
    d1 = *(r8 + 0xa40);
    asm { fdiv       d1, d1, d10 };
    d1 = *(r8 + 0xa48);
    asm { fdiv       d1, d1, d10 };
    r0 = r21;
    r1 = r23;
    objc_msgSend(r0, r1);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0xa50);
    asm { fdiv       d0, d0, d10 };
    d1 = *(r8 + 0xa58);
    asm { fdiv       d1, d1, d10 };
    d2 = *(r8 + 0xa60);
    asm { fdiv       d2, d2, d10 };
    d3 = *(r8 + 0xa68);
    asm { fdiv       d3, d3, d10 };
    d4 = *(r8 + 0xa70);
    asm { fdiv       d4, d4, d10 };
    d5 = *(r8 + 0xa78);
    asm { fdiv       d5, d5, d10 };
    r0 = r21;
    r1 = r23;
    objc_msgSend(r0, r1);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0xa80);
    asm { fdiv       d0, d0, d10 };
    d1 = *(r8 + 0xa88);
    asm { fdiv       d1, d1, d10 };
    d1 = *(r8 + 0xa90);
    asm { fdiv       d1, d1, d10 };
    d1 = *(r8 + 0xa98);
    asm { fdiv       d1, d1, d10 };
    d1 = *(r8 + 0xaa0);
    asm { fdiv       d1, d1, d10 };
    r0 = r21;
    r1 = r23;
    objc_msgSend(r0, r1);
    r0 = r21;
    r1 = r22;
    objc_msgSend(r0, r1);
    r0 = r21;
    r1 = r25;
    objc_msgSend(r0, r1);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0xaa8);
    asm { fdiv       d0, d0, d10 };
    d0 = *(r8 + 0xab0);
    d0 = d11 * d0;
    asm { fdiv       d0, d0, d10 };
    d1 = d13 + d0;
    r0 = r21;
    r1 = r24;
    objc_msgSend(r0, r1);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0xab8);
    asm { fdiv       d0, d0, d10 };
    d1 = *(r8 + 0xac0);
    asm { fdiv       d1, d1, d10 };
    r0 = r21;
    r1 = r22;
    objc_msgSend(r0, r1);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0xac8);
    asm { fdiv       d0, d0, d10 };
    d1 = 0x402c000000000000;
    asm { fdiv       d1, d1, d10 };
    r0 = r21;
    r1 = r22;
    objc_msgSend(r0, r1);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0xad0);
    asm { fdiv       d0, d0, d10 };
    d0 = *(r8 + 0xad8);
    asm { fdiv       d0, d0, d10 };
    d0 = *(r8 + 0xae0);
    asm { fdiv       d0, d0, d10 };
    d0 = *(r8 + 0x2d8);
    asm { fdiv       d0, d0, d10 };
    d0 = *(r8 + 0xae8);
    asm { fdiv       d0, d0, d10 };
    d0 = *(r8 + 0x2e8);
    asm { fdiv       d0, d0, d10 };
    r0 = r21;
    r1 = r23;
    objc_msgSend(r0, r1);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0xaf0);
    asm { fdiv       d0, d0, d10 };
    d0 = *(r8 + 0x300);
    asm { fdiv       d0, d0, d10 };
    d0 = *(r8 + 0xaf8);
    asm { fdiv       d0, d0, d10 };
    r0 = r21;
    r1 = r23;
    objc_msgSend(r0, r1);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0xb00);
    asm { fdiv       d0, d0, d10 };
    r0 = r21;
    r1 = r22;
    objc_msgSend(r0, r1);
    r0 = r21;
    r1 = r22;
    objc_msgSend(r0, r1);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0x2b0);
    asm { fdiv       d0, d0, d10 };
    d1 = *(r8 + 0xb08);
    asm { fdiv       d1, d1, d10 };
    d2 = *(r8 + 0xb10);
    asm { fdiv       d2, d2, d10 };
    d3 = *(r8 + 0xb18);
    asm { fdiv       d3, d3, d10 };
    d4 = *(r8 + 0xb20);
    asm { fdiv       d4, d4, d10 };
    d5 = *(r8 + 0xb28);
    asm { fdiv       d5, d5, d10 };
    r0 = r21;
    r1 = r23;
    objc_msgSend(r0, r1);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0xb30);
    asm { fdiv       d0, d0, d10 };
    r0 = r21;
    r1 = r22;
    objc_msgSend(r0, r1);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0xb38);
    asm { fdiv       d0, d0, d10 };
    d0 = *(r8 + 0xb40);
    asm { fdiv       d0, d0, d10 };
    d0 = *(r8 + 0xb48);
    asm { fdiv       d0, d0, d10 };
    d0 = *(r8 + 0xb50);
    asm { fdiv       d0, d0, d10 };
    r0 = r21;
    r1 = r23;
    objc_msgSend(r0, r1);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0xb58);
    asm { fdiv       d0, d0, d10 };
    r0 = r21;
    r1 = r22;
    objc_msgSend(r0, r1);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0x348);
    asm { fdiv       d0, d0, d10 };
    d1 = *(r8 + 0xb60);
    asm { fdiv       d1, d1, d10 };
    r0 = r21;
    r1 = r22;
    objc_msgSend(r0, r1);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0xb68);
    asm { fdiv       d0, d0, d10 };
    r8 = 0x4040000000000000;
    d1 = r8;
    asm { fdiv       d1, d1, d10 };
    r8 = 0x100bfa000;
    d2 = *(r8 + 0xb70);
    asm { fdiv       d2, d2, d10 };
    d3 = *(r8 + 0xb78);
    asm { fdiv       d3, d3, d10 };
    d4 = *(r8 + 0x398);
    asm { fdiv       d4, d4, d10 };
    d5 = *(r8 + 0xb80);
    asm { fdiv       d5, d5, d10 };
    r0 = r21;
    r1 = r23;
    objc_msgSend(r0, r1);
    r0 = r21;
    r1 = r22;
    objc_msgSend(r0, r1);
    r0 = r21;
    r1 = r25;
    objc_msgSend(r0, r1);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0x3a8);
    d0 = d15 * d0;
    asm { fdiv       d0, d0, d10 };
    d0 = d12 + d0;
    d1 = *(r8 + 0xb88);
    d1 = d11 * d1;
    asm { fdiv       d1, d1, d10 };
    r0 = r21;
    r1 = r24;
    objc_msgSend(r0, r1);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0x3b8);
    asm { fdiv       d0, d0, d10 };
    r0 = r21;
    r1 = r22;
    objc_msgSend(r0, r1);
    r0 = r21;
    r1 = r22;
    objc_msgSend(r0, r1);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0xb90);
    asm { fdiv       d0, d0, d10 };
    d0 = *(r8 + 0x3d0);
    asm { fdiv       d0, d0, d10 };
    d0 = *(r8 + 0xb98);
    d0 = d15 * d0;
    asm { fdiv       d0, d0, d10 };
    d2 = d12 + d0;
    d0 = *(r8 + 0xba0);
    asm { fdiv       d0, d0, d10 };
    r0 = r21;
    r1 = r23;
    objc_msgSend(r0, r1);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0xba8);
    asm { fdiv       d0, d0, d10 };
    r0 = r21;
    r1 = r22;
    objc_msgSend(r0, r1);
    r0 = r21;
    r1 = r22;
    objc_msgSend(r0, r1);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0xbb0);
    asm { fdiv       d0, d0, d10 };
    d0 = *(r8 + 0xbb8);
    asm { fdiv       d0, d0, d10 };
    r0 = r21;
    r1 = r23;
    objc_msgSend(r0, r1);
    r0 = r21;
    r1 = r22;
    objc_msgSend(r0, r1);
    d0 = 0x0;
    asm { fdiv       d0, d0, d10 };
    r8 = 0x100bfa000;
    d0 = *(r8 + 0xbc0);
    asm { fdiv       d0, d0, d10 };
    d0 = *(r8 + 0x420);
    asm { fdiv       d0, d0, d10 };
    d0 = *(r8 + 0xbc8);
    asm { fdiv       d0, d0, d10 };
    r0 = r21;
    r1 = r23;
    objc_msgSend(r0, r1);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0xbd0);
    asm { fdiv       d0, d0, d10 };
    r0 = r21;
    r1 = r22;
    objc_msgSend(r0, r1);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0xbd8);
    asm { fdiv       d0, d0, d10 };
    r0 = r21;
    r1 = r23;
    objc_msgSend(r0, r1);
    r0 = r21;
    r1 = r25;
    objc_msgSend(r0, r1);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0xbe0);
    d0 = d15 * d0;
    asm { fdiv       d0, d0, d10 };
    d0 = d12 + d0;
    d1 = *(r8 + 0x1e0);
    asm { fdiv       d1, d1, d10 };
    r0 = r21;
    r1 = r24;
    objc_msgSend(r0, r1);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0xbe8);
    d0 = d15 * d0;
    asm { fdiv       d0, d0, d10 };
    d0 = d12 + d0;
    r0 = r21;
    r1 = r22;
    objc_msgSend(r0, r1);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0xbf0);
    asm { fdiv       d0, d0, d10 };
    d1 = *(r8 + 0xbf8);
    asm { fdiv       d1, d1, d10 };
    d2 = *(r8 + 0xc00);
    asm { fdiv       d2, d2, d10 };
    d3 = *(r8 + 0xc08);
    asm { fdiv       d3, d3, d10 };
    d4 = *(r8 + 0xc10);
    asm { fdiv       d4, d4, d10 };
    d5 = *(r8 + 0xc18);
    asm { fdiv       d5, d5, d10 };
    r0 = r21;
    r1 = r23;
    objc_msgSend(r0, r1);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0xc20);
    asm { fdiv       d0, d0, d10 };
    d0 = *(r8 + 0xc28);
    asm { fdiv       d0, d0, d10 };
    r0 = r21;
    r1 = r22;
    objc_msgSend(r0, r1);
    r0 = r21;
    r1 = r22;
    objc_msgSend(r0, r1);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0xc30);
    asm { fdiv       d0, d0, d10 };
    r0 = r21;
    r1 = r22;
    objc_msgSend(r0, r1);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0xc38);
    asm { fdiv       d0, d0, d10 };
    d1 = *(r8 + 0xc40);
    asm { fdiv       d1, d1, d10 };
    d2 = *(r8 + 0xc48);
    asm { fdiv       d2, d2, d10 };
    d3 = *(r8 + 0xc50);
    asm { fdiv       d3, d3, d10 };
    d4 = *(r8 + 0xc58);
    asm { fdiv       d4, d4, d10 };
    d5 = *(r8 + 0xc60);
    asm { fdiv       d5, d5, d10 };
    r0 = r21;
    r1 = r23;
    objc_msgSend(r0, r1);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0xc68);
    asm { fdiv       d0, d0, d10 };
    d1 = *(r8 + 0xc70);
    asm { fdiv       d1, d1, d10 };
    d2 = *(r8 + 0xc78);
    asm { fdiv       d2, d2, d10 };
    d3 = *(r8 + 0xc80);
    asm { fdiv       d3, d3, d10 };
    d4 = *(r8 + 0xc88);
    asm { fdiv       d4, d4, d10 };
    d5 = *(r8 + 0xc90);
    asm { fdiv       d5, d5, d10 };
    r0 = r21;
    r1 = r23;
    objc_msgSend(r0, r1);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0xc98);
    asm { fdiv       d0, d0, d10 };
    d1 = *(r8 + 0xca0);
    asm { fdiv       d1, d1, d10 };
    r0 = r21;
    r1 = r22;
    objc_msgSend(r0, r1);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0xca8);
    asm { fdiv       d0, d0, d10 };
    d1 = *(r8 + 0xcb0);
    asm { fdiv       d1, d1, d10 };
    d2 = *(r8 + 0xcb8);
    asm { fdiv       d2, d2, d10 };
    d3 = *(r8 + 0xcc0);
    asm { fdiv       d3, d3, d10 };
    d4 = *(r8 + 0xcc8);
    asm { fdiv       d4, d4, d10 };
    d5 = *(r8 + 0xcd0);
    asm { fdiv       d5, d5, d10 };
    r0 = r21;
    r1 = r23;
    objc_msgSend(r0, r1);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0xcd8);
    asm { fdiv       d0, d0, d10 };
    d1 = *(r8 + 0xce0);
    asm { fdiv       d1, d1, d10 };
    d2 = *(r8 + 0xce8);
    asm { fdiv       d2, d2, d10 };
    d3 = *(r8 + 0xcf0);
    asm { fdiv       d3, d3, d10 };
    d4 = *(r8 + 0xcf8);
    asm { fdiv       d4, d4, d10 };
    d5 = *(r8 + 0xd00);
    asm { fdiv       d5, d5, d10 };
    r0 = r21;
    r1 = r23;
    objc_msgSend(r0, r1);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0xd08);
    asm { fdiv       d0, d0, d10 };
    d1 = *(r8 + 0xd10);
    asm { fdiv       d1, d1, d10 };
    r0 = r21;
    r1 = r22;
    objc_msgSend(r0, r1);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0xd18);
    asm { fdiv       d0, d0, d10 };
    d1 = *(r8 + 0xd20);
    asm { fdiv       d1, d1, d10 };
    r0 = r21;
    r1 = r22;
    objc_msgSend(r0, r1);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0xd28);
    asm { fdiv       d0, d0, d10 };
    d1 = *(r8 + 0xd30);
    asm { fdiv       d1, d1, d10 };
    d2 = *(r8 + 0xd38);
    asm { fdiv       d2, d2, d10 };
    d3 = *(r8 + 0xd40);
    asm { fdiv       d3, d3, d10 };
    d4 = *(r8 + 0xd48);
    asm { fdiv       d4, d4, d10 };
    d5 = *(r8 + 0xd50);
    asm { fdiv       d5, d5, d10 };
    r0 = r21;
    r1 = r23;
    objc_msgSend(r0, r1);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0xd58);
    asm { fdiv       d0, d0, d10 };
    d0 = *(r8 + 0xd60);
    asm { fdiv       d0, d0, d10 };
    d0 = *(r8 + 0xd68);
    asm { fdiv       d0, d0, d10 };
    d0 = *(r8 + 0xd70);
    asm { fdiv       d0, d0, d10 };
    d0 = *(r8 + 0xd78);
    asm { fdiv       d0, d0, d10 };
    d0 = *(r8 + 0xd80);
    asm { fdiv       d0, d0, d10 };
    r0 = r21;
    r1 = r23;
    objc_msgSend(r0, r1);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0xd88);
    asm { fdiv       d0, d0, d10 };
    r0 = r21;
    r1 = r22;
    objc_msgSend(r0, r1);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0xd90);
    asm { fdiv       d0, d0, d10 };
    d1 = *(r8 + 0xd98);
    asm { fdiv       d1, d1, d10 };
    d2 = *(r8 + 0xda0);
    asm { fdiv       d2, d2, d10 };
    d2 = *(r8 + 0xda8);
    asm { fdiv       d2, d2, d10 };
    d2 = *(r8 + 0xdb0);
    asm { fdiv       d2, d2, d10 };
    r0 = r21;
    r1 = r23;
    objc_msgSend(r0, r1);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0xdb8);
    asm { fdiv       d0, d0, d10 };
    d1 = *(r8 + 0xdc0);
    asm { fdiv       d1, d1, d10 };
    r0 = r21;
    r1 = r22;
    objc_msgSend(r0, r1);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0xdc8);
    asm { fdiv       d0, d0, d10 };
    d1 = *(r8 + 0xdd0);
    asm { fdiv       d1, d1, d10 };
    r0 = r21;
    r1 = r22;
    objc_msgSend(r0, r1);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0xdd8);
    asm { fdiv       d0, d0, d10 };
    d1 = *(r8 + 0xde0);
    asm { fdiv       d1, d1, d10 };
    d2 = *(r8 + 0xde8);
    asm { fdiv       d2, d2, d10 };
    d3 = *(r8 + 0xdf0);
    asm { fdiv       d3, d3, d10 };
    d4 = *(r8 + 0xdf8);
    asm { fdiv       d4, d4, d10 };
    d5 = *(r8 + 0xe00);
    asm { fdiv       d5, d5, d10 };
    r0 = r21;
    r1 = r23;
    objc_msgSend(r0, r1);
    d0 = 0x4023000000000000;
    asm { fdiv       d0, d0, d10 };
    r8 = 0x100bfa000;
    d0 = *(r8 + 0xe08);
    asm { fdiv       d0, d0, d10 };
    d0 = *(r8 + 0xe10);
    asm { fdiv       d0, d0, d10 };
    d0 = *(r8 + 0xe18);
    asm { fdiv       d0, d0, d10 };
    d0 = *(r8 + 0xe20);
    asm { fdiv       d0, d0, d10 };
    r0 = r21;
    r1 = r23;
    objc_msgSend(r0, r1);
    r0 = r21;
    r1 = r22;
    objc_msgSend(r0, r1);
    r0 = r21;
    r1 = r25;
    objc_msgSend(r0, r1);
    r8 = &@selector(clearTempLog:WithCompletionBlock:);
    r1 = *(r8 + 0xa40);
    r0 = r21;
    objc_msgSend(r0, r1);
    r0 = *(r26 + 0xa60);
    r8 = &@selector(clearTempLog:WithCompletionBlock:);
    r1 = *(r8 + 0xa30);
    r0 = objc_msgSend(r0, r1);
    r0 = [r0 retain];
    r8 = &@selector(_initOpenAL);
    r1 = *(r8 + 0x9f8);
    r0 = r20;
    objc_msgSend(r0, r1);
    r8 = &@selector(clearTempLog:WithCompletionBlock:);
    r1 = *(r8 + 0xa20);
    r0 = r22;
    objc_msgSend(r0, r1);
    r0 = r19;
    CGContextEndTransparencyLayer(r0);
    r0 = r19;
    CGContextRestoreGState(r0);
    r0 = r22;
    [r0 release];
    r0 = r21;
    [r0 release];
    r0 = r20;
    [r0 release];
    return;
}

-(void)drawUnmute:(struct CGRect)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r19 = UIGraphicsGetCurrentContext();
    [[UIColor colorWithUInt:0xffffff withAlpha:r3] retain];
    CGContextSaveGState(r19);
    CGContextBeginTransparencyLayer(r19, 0x0);
    [self contentEdgeInsets];
    [self contentEdgeInsets];
    d11 = d9 - d8 + d2;
    [self contentEdgeInsets];
    [self contentEdgeInsets];
    [self contentEdgeInsets];
    [self contentEdgeInsets];
    r0 = *(&@class(ADCTransitionalContainer) + 0xa60);
    r0 = [r0 bezierPath];
    r0 = [r0 retain];
    asm { fdiv       d0, d0, d14 };
    d0 = d11 * 0x4040000000000000;
    asm { fdiv       d0, d0, d14 };
    [r0 moveToPoint:r2];
    asm { fdiv       d0, d0, d14 };
    asm { fdiv       d1, d1, d14 };
    [r21 addLineToPoint:r2];
    asm { fdiv       d0, d0, d14 };
    objc_msgSend(r21, r22);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0x2c0);
    asm { fdiv       d0, d0, d14 };
    d0 = *(r8 + 0x2c8);
    asm { fdiv       d0, d0, d14 };
    d0 = *(r8 + 0x2d0);
    asm { fdiv       d0, d0, d14 };
    d0 = *(r8 + 0x2d8);
    asm { fdiv       d0, d0, d14 };
    d0 = *(r8 + 0x2e0);
    asm { fdiv       d0, d0, d14 };
    d0 = *(r8 + 0x2e8);
    asm { fdiv       d0, d0, d14 };
    [r21 addCurveToPoint:r2 controlPoint1:r3 controlPoint2:r4];
    r8 = 0x100bfa000;
    d0 = *(r8 + 0x2f0);
    asm { fdiv       d0, d0, d14 };
    d0 = *(r8 + 0x2f8);
    asm { fdiv       d0, d0, d14 };
    d0 = *(r8 + 0x300);
    asm { fdiv       d0, d0, d14 };
    d0 = *(r8 + 0x308);
    asm { fdiv       d0, d0, d14 };
    objc_msgSend(r21, r23);
    asm { fdiv       d0, d0, d14 };
    objc_msgSend(r21, r22);
    objc_msgSend(r21, r22);
    asm { fdiv       d0, d0, d14 };
    asm { fdiv       d1, d1, d14 };
    r8 = 0x100bfa000;
    d2 = *(r8 + 0x320);
    asm { fdiv       d2, d2, d14 };
    d3 = *(r8 + 0x328);
    asm { fdiv       d3, d3, d14 };
    d4 = *(r8 + 0x330);
    asm { fdiv       d4, d4, d14 };
    d5 = *(r8 + 0x338);
    asm { fdiv       d5, d5, d14 };
    objc_msgSend(r21, r23);
    asm { fdiv       d0, d0, d14 };
    objc_msgSend(r21, r22);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0x348);
    asm { fdiv       d0, d0, d14 };
    d0 = *(r8 + 0x350);
    asm { fdiv       d0, d0, d14 };
    d0 = *(r8 + 0x358);
    asm { fdiv       d0, d0, d14 };
    d0 = *(r8 + 0x360);
    asm { fdiv       d0, d0, d14 };
    objc_msgSend(r21, r23);
    asm { fdiv       d0, d0, d14 };
    objc_msgSend(r21, r22);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0x370);
    asm { fdiv       d0, d0, d14 };
    d1 = *(r8 + 0x378);
    asm { fdiv       d1, d1, d14 };
    objc_msgSend(r21, r22);
    asm { fdiv       d0, d0, d14 };
    asm { fdiv       d1, d1, d14 };
    r8 = 0x100bfa000;
    d2 = *(r8 + 0x388);
    asm { fdiv       d2, d2, d14 };
    d3 = *(r8 + 0x390);
    asm { fdiv       d3, d3, d14 };
    d4 = *(r8 + 0x398);
    asm { fdiv       d4, d4, d14 };
    d5 = *(r8 + 0x3a0);
    asm { fdiv       d5, d5, d14 };
    objc_msgSend(r21, r23);
    objc_msgSend(r21, r22);
    [r21 closePath];
    r8 = 0x100bfa000;
    d0 = *(r8 + 0x3a8);
    d0 = d13 * d0;
    asm { fdiv       d0, d0, d14 };
    d1 = *(r8 + 0x3b0);
    d1 = d11 * d1;
    asm { fdiv       d1, d1, d14 };
    objc_msgSend(r21, r25);
    asm { fdiv       d0, d0, d14 };
    objc_msgSend(r21, r22);
    d0 = d13 * *0x100bfa3c0;
    asm { fdiv       d0, d0, d14 };
    objc_msgSend(r21, r22);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0x3c8);
    asm { fdiv       d0, d0, d14 };
    d0 = *(r8 + 0x3d0);
    asm { fdiv       d0, d0, d14 };
    d0 = *(r8 + 0x3d8);
    asm { fdiv       d0, d0, d14 };
    d0 = *(r8 + 0x3e0);
    asm { fdiv       d0, d0, d14 };
    d0 = *(r8 + 0x3e8);
    asm { fdiv       d0, d0, d14 };
    d0 = *(r8 + 0x3f0);
    asm { fdiv       d0, d0, d14 };
    objc_msgSend(r21, r23);
    asm { fdiv       d0, d0, d14 };
    objc_msgSend(r21, r22);
    asm { fdiv       d0, d0, d14 };
    objc_msgSend(r21, r22);
    d0 = d11 * 0x4051000000000000;
    asm { fdiv       d0, d0, d14 };
    r8 = 0x100bfa000;
    d0 = *(r8 + 0x408);
    asm { fdiv       d0, d0, d14 };
    d0 = *(r8 + 0x410);
    asm { fdiv       d0, d0, d14 };
    objc_msgSend(r21, r23);
    objc_msgSend(r21, r22);
    asm { fdiv       d0, d0, d14 };
    r8 = 0x100bfa000;
    d0 = *(r8 + 0x418);
    asm { fdiv       d0, d0, d14 };
    d0 = *(r8 + 0x420);
    asm { fdiv       d0, d0, d14 };
    d0 = *(r8 + 0x428);
    asm { fdiv       d0, d0, d14 };
    objc_msgSend(r21, r23);
    asm { fdiv       d0, d0, d14 };
    objc_msgSend(r21, r22);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0x438);
    asm { fdiv       d0, d0, d14 };
    d0 = *(r8 + 0x440);
    asm { fdiv       d0, d0, d14 };
    objc_msgSend(r21, r23);
    objc_msgSend(r21, r24);
    d0 = d13 * *0x100bfa448;
    asm { fdiv       d0, d0, d14 };
    d1 = d11 * 0x4049000000000000;
    asm { fdiv       d1, d1, d14 };
    objc_msgSend(r21, r25);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0x450);
    asm { fdiv       d0, d0, d14 };
    d0 = *(r8 + 0x458);
    asm { fdiv       d0, d0, d14 };
    objc_msgSend(r21, r22);
    objc_msgSend(r21, r22);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0x460);
    asm { fdiv       d0, d0, d14 };
    d0 = *(r8 + 0x468);
    asm { fdiv       d0, d0, d14 };
    d0 = *(r8 + 0x470);
    asm { fdiv       d0, d0, d14 };
    asm { fdiv       d0, d0, d14 };
    objc_msgSend(r21, r23);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0x478);
    asm { fdiv       d0, d0, d14 };
    d1 = *(r8 + 0x480);
    asm { fdiv       d1, d1, d14 };
    d1 = *(r8 + 0x488);
    asm { fdiv       d1, d1, d14 };
    d1 = *(r8 + 0x490);
    d1 = d13 * d1;
    asm { fdiv       d1, d1, d14 };
    objc_msgSend(r21, r23);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0x498);
    d0 = d13 * d0;
    asm { fdiv       d0, d0, d14 };
    d1 = *(r8 + 0x4a0);
    d1 = d11 * d1;
    asm { fdiv       d1, d1, d14 };
    objc_msgSend(r21, r22);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0x4a8);
    asm { fdiv       d0, d0, d14 };
    d0 = *(r8 + 0x4b0);
    asm { fdiv       d0, d0, d14 };
    objc_msgSend(r21, r22);
    objc_msgSend(r21, r22);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0x4b8);
    asm { fdiv       d0, d0, d14 };
    d0 = *(r8 + 0x4c0);
    d0 = d13 * d0;
    v4 = v13;
    asm { fdiv       d0, d0, d14 };
    d0 = *(r8 + 0x4c8);
    asm { fdiv       d0, d0, d14 };
    d0 = *(r8 + 0x4d0);
    d0 = d4 * d0;
    asm { fdiv       d0, d0, d14 };
    objc_msgSend(r21, r23);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0x4d8);
    asm { fdiv       d0, d0, d14 };
    d0 = *(r8 + 0x4e0);
    var_E0 = d10;
    asm { fdiv       d0, d0, d14 };
    d0 = *(r8 + 0x4e8);
    asm { fdiv       d0, d0, d14 };
    d0 = *(r8 + 0x4f0);
    asm { fdiv       d0, d0, d14 };
    objc_msgSend(r21, r23);
    asm { fdiv       d0, d0, d14 };
    objc_msgSend(r21, r22);
    asm { fdiv       d0, d0, d14 };
    objc_msgSend(r21, r22);
    objc_msgSend(r21, r22);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0x508);
    asm { fdiv       d0, d0, d14 };
    d0 = *(r8 + 0x510);
    asm { fdiv       d0, d0, d14 };
    d0 = *(r8 + 0x518);
    asm { fdiv       d0, d0, d14 };
    objc_msgSend(r21, r23);
    asm { fdiv       d0, d0, d14 };
    objc_msgSend(r21, r23);
    asm { fdiv       d0, d0, d14 };
    objc_msgSend(r21, r22);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0x530);
    asm { fdiv       d0, d0, d14 };
    d0 = *(r8 + 0x538);
    asm { fdiv       d0, d0, d14 };
    objc_msgSend(r21, r22);
    objc_msgSend(r21, r22);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0x540);
    asm { fdiv       d0, d0, d14 };
    d0 = *(r8 + 0x548);
    asm { fdiv       d0, d0, d14 };
    d0 = *(r8 + 0x550);
    asm { fdiv       d0, d0, d14 };
    d0 = *(r8 + 0x558);
    asm { fdiv       d0, d0, d14 };
    objc_msgSend(r21, r23);
    r8 = 0x100bfa000;
    d0 = *(r8 + 0x560);
    asm { fdiv       d0, d0, d14 };
    d0 = *(r8 + 0x568);
    asm { fdiv       d0, d0, d14 };
    d0 = *(r8 + 0x570);
    asm { fdiv       d0, d0, d14 };
    d0 = *(r8 + 0x578);
    asm { fdiv       d0, d0, d14 };
    objc_msgSend(r21, r23);
    objc_msgSend(r21, r22);
    objc_msgSend(r21, r24);
    [r21 addClip];
    r22 = [[*(r26 + 0xa60) bezierPathWithRect:r2] retain];
    [r20 setFill];
    [r22 fill];
    CGContextEndTransparencyLayer(r19);
    CGContextRestoreGState(r19);
    [r22 release];
    [r21 release];
    [r20 release];
    return;
}

@end