@implementation MenuProfileView

-(void)setupLayout {
    [[&var_10 super] setupLayout];
    return;
}

-(void)setCoinsValue:(int)arg2 {
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_cashLabel));
    [*(self + r21) setString:sub_1005ba734([NSNumber numberWithInt:arg2], 0x0, 0x0, 0x0, 0x3e8, 0x0, 0x3, 0x0)];
    sub_100088d04(*(self + r21), self->_cashIcon);
    return;
}

-(void)setDisplayName:(void *)arg2 userId:(void *)arg3 {
    r2 = arg2;
    r31 = r31 - 0x60;
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
    r19 = arg3;
    r20 = self;
    r24 = sign_extend_64(*(int32_t *)ivar_offset(_nameLabel));
    r0 = *(self + r24);
    if (r2 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r2 = r2;
            }
            else {
                    r2 = @"";
            }
    }
    [r0 setString:r2];
    r26 = sign_extend_64(*(int32_t *)ivar_offset(_idLabel));
    r22 = *(r20 + r26);
    r8 = 0x101137000;
    objc_msgSend(r22, *(r8 + 0xc30));
    if (r19 == 0x0) {
            if (!CPU_FLAGS & E) {
                    r8 = r19;
            }
            else {
                    r8 = @"";
            }
    }
    [r22 setString:[NSString stringWithFormat:r2]];
    sub_100088d04(*(r20 + r24), *(r20 + r26));
    return;
}

-(void)setLevel:(int)arg2 {
    sub_1005ba734([NSNumber numberWithInt:arg2], 0x0, 0x0, 0x0, 0x3e8, 0x0, 0x3, 0x0);
    [r19 setString:r2];
    return;
}

-(void)setTotalGames:(int)arg2 {
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_totalGamesValue));
    [*(self + r21) setString:sub_1005ba734([NSNumber numberWithInt:arg2], 0x0, 0x0, 0x0, 0x3e8, 0x0, 0x3, 0x0)];
    sub_100088d04(self->_totalGamesLabel, *(self + r21));
    return;
}

-(void)setXp:(int)arg2 withXpToNextLevel:(int)arg3 lastLevel:(bool)arg4 {
    r31 = r31 - 0x90;
    var_60 = d11;
    stack[-104] = d10;
    var_50 = d9;
    stack[-88] = d8;
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
    [NSNumber numberWithInt:r2];
    [NSNumber numberWithInt:arg3];
    r2 = [NSString stringWithFormat:@"%@/%@"];
    [r19->_experiencePointsLabel setString:r2];
    asm { scvtf      s0, w22 };
    asm { scvtf      s2, w21 };
    asm { fdiv       s0, s0, s2 };
    if ((r20 & 0x1) != 0x0) {
            asm { fcsel      s10, s1, s0, ne };
    }
    [*(r19 + sign_extend_64(*(int32_t *)ivar_offset(_xpBarFrame))) contentSize];
    r23 = sign_extend_64(*(int32_t *)ivar_offset(_xpBarFill));
    [*(r19 + r23) position];
    [*(r19 + r22) position];
    asm { fcvt       s0, d0 };
    r19 = *(r19 + r23);
    asm { fcvt       d8, s0 };
    objc_msgSend(r19, r20);
    [r19 changeSize:r2];
    return;
}

-(void)setAverageMass:(int)arg2 {
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_averageMassValue));
    [*(self + r21) setString:sub_1005ba734([NSNumber numberWithInt:arg2], 0x0, 0x0, 0x0, 0x3e8, 0x0, 0x3, 0x0)];
    sub_100088d04(self->_averageMassLabel, *(self + r21));
    return;
}

-(void)setTotalMass:(int)arg2 {
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_totalMassValue));
    [*(self + r21) setString:sub_1005ba734([NSNumber numberWithInt:arg2], 0x0, 0x0, 0x0, 0x3e8, 0x0, 0x3, 0x0)];
    sub_100088d04(self->_totalMassLabel, *(self + r21));
    return;
}

-(void)setLongestTimeAlive:(int)arg2 {
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_longestTimeValue));
    [*(self + r21) setString:sub_100088c10(arg2)];
    sub_100088d04(self->_longestTimeLabel, *(self + r21));
    return;
}

-(void)setHighestMass:(int)arg2 {
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_highestMassValue));
    [*(self + r21) setString:sub_1005ba734([NSNumber numberWithInt:arg2], 0x0, 0x0, 0x0, 0x3e8, 0x0, 0x3, 0x0)];
    sub_100088d04(self->_highestMassLabel, *(self + r21));
    return;
}

-(void)setTotalCellsEaten:(int)arg2 {
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_totalCellsEatenValue));
    [*(self + r21) setString:sub_1005ba734([NSNumber numberWithInt:arg2], 0x0, 0x0, 0x0, 0x3e8, 0x0, 0x3, 0x0)];
    sub_100088d04(self->_totalCellsEatenLabel, *(self + r21));
    return;
}

@end