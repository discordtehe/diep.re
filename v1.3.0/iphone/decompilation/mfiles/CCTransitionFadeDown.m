@implementation CCTransitionFadeDown

-(void *)actionWithSize:(struct CGSize)arg2 {
    memcpy(&r2, &arg2, 0x8);
    r0 = [CCFadeOutDownTiles actionWithDuration:r2 size:r3];
    return r0;
}

@end