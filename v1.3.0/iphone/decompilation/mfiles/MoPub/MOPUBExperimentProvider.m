@implementation MOPUBExperimentProvider

+(void)setDisplayAgentType:(long long)arg2 {
    *(int8_t *)0x1011d82e8 = 0x1;
    *0x1011d82f0 = arg2;
    return;
}

+(void)setDisplayAgentFromAdServer:(long long)arg2 {
    r2 = arg2;
    if (*(int8_t *)byte_1011d82e8 == 0x0) {
            *0x1011d82f0 = r2;
    }
    return;
}

+(long long)displayAgentType {
    return *0x1011d82f0;
}

+(void)setDisplayAgentOverriddenByClientFlag:(bool)arg2 {
    *(int8_t *)0x1011d82e8 = arg2;
    return;
}

@end