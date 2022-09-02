@implementation UserStats

+(void *)userStats {
    r0 = objc_alloc();
    r0 = [r0 init];
    r0 = [r0 autorelease];
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
            [r19 resetStats];
    }
    r0 = r19;
    return r0;
}

-(void)dealloc {
    [[&var_10 super] dealloc];
    return;
}

-(void)onDisconnect {
    [self resetStats];
    return;
}

-(void)resetStats {
    *(int128_t *)(self + 0x8) = 0x0;
    *(int128_t *)(self + 0x10) = 0x0;
    *(self + 0x18) = 0x0;
    return;
}

-(int)games_played {
    r0 = *(int32_t *)(self + 0x8);
    return r0;
}

-(int)mass_consumed {
    r0 = *(int32_t *)(self + 0xc);
    return r0;
}

-(int)average_mass {
    r0 = *(int32_t *)(self + 0x10);
    return r0;
}

-(int)highest_mass {
    r0 = *(int32_t *)(self + 0x14);
    return r0;
}

-(int)longest_time_alive {
    r0 = *(int32_t *)(self + 0x18);
    return r0;
}

-(int)normal_cells_eaten {
    r0 = *(int32_t *)(self + 0x1c);
    return r0;
}

@end