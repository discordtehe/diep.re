@implementation HUDSmasherStatsNode

+(void *)HUDSmasherStatsNodeWithStatType:(int)arg2 {
    r0 = [CCBReader nodeGraphFromFile:@"DiepSmasherStatsNode.ccbi"];
    [r0 setSmasherStatType:arg2];
    [r0 setStatNameText];
    [r0 setStatImages];
    [r0 setTarget:r2 selector:r3];
    r0 = r20;
    return r0;
}

-(void)setSmasherStatType:(int)arg2 {
    *(int32_t *)(int64_t *)&self->_smasherStatType = arg2;
    *(int32_t *)(int64_t *)&self->_statType = sub_10000e730();
    return;
}

-(void)didLoadFromCCB {
    r0 = self;
    r31 = r31 - 0x80;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r8 = sign_extend_64(*(int32_t *)ivar_offset(_ccbLoaded));
    if (*(int8_t *)(r0 + r8) == 0x0) {
            *(int8_t *)(r0 + r8) = 0x1;
            r2 = r0->_barEmpty0;
            r8 = sign_extend_64(*(int32_t *)ivar_offset(_barEmpty1));
            r9 = sign_extend_64(*(int32_t *)ivar_offset(_barEmpty2));
            r10 = sign_extend_64(*(int32_t *)ivar_offset(_barEmpty3));
            r11 = sign_extend_64(*(int32_t *)ivar_offset(_barEmpty4));
            r13 = sign_extend_64(*(int32_t *)ivar_offset(_barEmpty5));
            r12 = sign_extend_64(*(int32_t *)ivar_offset(_barEmpty6));
            r14 = sign_extend_64(*(int32_t *)ivar_offset(_barEmpty7));
            r15 = sign_extend_64(*(int32_t *)ivar_offset(_barEmpty8));
            r16 = sign_extend_64(*(int32_t *)ivar_offset(_barEmpty9));
            r0->_emptyBars = [[NSArray arrayWithObjects:r2] retain];
            [r0 setStatWithValue:r2];
    }
    return;
}

-(void)callback {
    r0 = self;
    r9 = *0x1011dea68;
    r8 = *(r9 + 0x830);
    if (r8 != *(r9 + 0x838)) {
            r8 = *r8;
            if (r8 != 0x0) {
                    sub_10002025c(r8, *(int32_t *)(int64_t *)&r0->_statType);
            }
    }
    return;
}

-(void)setStatImages {
    var_40 = d9;
    stack[-72] = d8;
    r31 = r31 + 0xffffffffffffffb0;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r22 = sign_extend_64(*(int32_t *)ivar_offset(_smasherStatType));
    r0 = sub_10000e750();
    if (r0 != 0x0) {
            r0 = sub_1005d7410(@"DiepGameUI.png", @"DiepGameUI.plist", r0, 0x0);
            if (r0 != 0x0) {
                    r23 = sign_extend_64(*(int32_t *)ivar_offset(_upperBody));
                    [*(r19 + r23) addChild:r0 z:0xffffffffffffffff];
                    [*(r19 + r23) contentSize];
                    [*(r19 + r23) contentSize];
                    [r0 setPosition:r0];
                    r8 = *(int32_t *)(r19 + r22);
                    if (r8 <= 0x3) {
                            (0x10002c810 + *(int8_t *)(0x100b9b778 + r8) * 0x4)();
                    }
            }
    }
    return;
}

-(void)setStatWithValue:(int)arg2 {
    *(int32_t *)(int64_t *)&self->_statMax = 0xa;
    [[&var_10 super] setStatWithValue:r2];
    return;
}

-(void)refreshStat {
    r0 = self;
    r8 = *0x1011dea68;
    r9 = *(r8 + 0x830);
    if (r9 != *(r8 + 0x838)) {
            r9 = *r9;
            if (r9 != 0x0 && *(int8_t *)(*0x1011dea68 + 0x24ca48) != 0x0) {
                    *(int32_t *)(int64_t *)&r0->_currentStatValue = *(int32_t *)(0x68 + r9 + sign_extend_64(*(int32_t *)(int64_t *)&r0->_statType) * 0x4);
                    [r0 setStatWithValue:r2];
            }
    }
    return;
}

@end