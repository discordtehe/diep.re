@implementation TableEntry

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
    r0 = *(r19 + 0x10);
    if (r0 != 0x0) {
            [r0 release];
            *(r19 + 0x10) = 0x0;
    }
    [[&var_20 super] dealloc];
    return;
}

-(void *)init:(void *)arg2 tag:(void *)arg3 {
    r31 = r31 - 0x40;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = arg3;
    r19 = arg2;
    r0 = [[&var_30 super] init];
    r20 = r0;
    if (r0 != 0x0) {
            if (r21 != 0x0) {
                    *(r20 + 0x8) = [r21 retain];
            }
            *(r20 + 0x10) = [r19 retain];
            r0 = [r19 conformsToProtocol:@protocol(TableCellProtocol)];
            *(int8_t *)(r20 + 0x18) = r0;
            if (r0 != 0x0) {
                    *(int8_t *)(r20 + 0x19) = [r19 respondsToSelector:@selector(loadData)];
                    *(int8_t *)(r20 + 0x1a) = [r19 respondsToSelector:@selector(updateDistanceRatio:)];
                    *(int8_t *)(r20 + 0x1b) = [r19 respondsToSelector:@selector(ccTouchBegan:withEvent:), r3];
            }
    }
    r0 = r20;
    return r0;
}

+(void *)getTableEntry:(void *)arg2 tag:(void *)arg3 {
    r0 = [self tableEntryWithCell:arg2 tag:arg3];
    return r0;
}

+(void *)getTableEntry:(void *)arg2 {
    r0 = [self tableEntryWithCell:arg2];
    return r0;
}

+(void *)tableEntryWithCell:(void *)arg2 tag:(void *)arg3 {
    r0 = [TableEntry alloc];
    r0 = [r0 init:arg2 tag:arg3];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)tableEntryWithCell:(void *)arg2 {
    r0 = [self tableEntryWithCell:arg2 tag:0x0];
    return r0;
}

@end