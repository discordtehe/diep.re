@implementation GADBinaryHeap

-(void *)initWithComparator:(void * *)arg2 {
    r31 = r31 - 0x60;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = arg2;
    r19 = [[&saved_fp - 0x20 super] init];
    if (r19 != 0x0) {
            r8 = 0x10081d314;
            if (r20 != 0x0) {
                    if (!CPU_FLAGS & NE) {
                            r8 = 0x10081d314;
                    }
                    else {
                            r8 = r20;
                    }
            }
            r0 = CFBinaryHeapCreate(0x0, 0x0, &var_48, 0x0);
            r19->_heap = r0;
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
    r0 = r19->_heap;
    if (r0 != 0x0) {
            CFRelease(r0);
    }
    [[&var_20 super] dealloc];
    return;
}

-(void)addObjectToHeap:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    if (r2 != 0x0) {
            CFBinaryHeapAddValue(r0->_heap, r2);
    }
    return;
}

-(bool)containsObject:(void *)arg2 {
    r2 = arg2;
    r0 = self;
    if (r2 != 0x0) {
            var_10 = r29;
            stack[-8] = r30;
            r31 = r31 + 0xfffffffffffffff0;
            r0 = r0->_heap;
            r0 = CFBinaryHeapContainsValue(r0, r2);
            if (r0 != 0x0) {
                    if (CPU_FLAGS & NE) {
                            r0 = 0x1;
                    }
            }
    }
    else {
            r0 = 0x0;
    }
    return r0;
}

-(long long)count {
    r0 = self->_heap;
    r0 = CFBinaryHeapGetCount(r0);
    return r0;
}

-(void *)minimum {
    r0 = self->_heap;
    r0 = CFBinaryHeapGetMinimum(r0);
    return r0;
}

-(void *)removedMinimum {
    [[self minimum] retain];
    CFBinaryHeapRemoveMinimumValue(self->_heap);
    r0 = [r20 autorelease];
    return r0;
}

-(void *)sortedObjects {
    var_30 = r24;
    stack[-56] = r23;
    r31 = r31 + 0xffffffffffffffc0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    if ([self count] != 0x0) {
            r0 = [NSMutableData dataWithLength:[r19 count] << 0x3];
            r0 = [r0 retain];
            r21 = r19->_heap;
            r0 = objc_retainAutorelease(r0);
            CFBinaryHeapGetValues(r21, [r0 mutableBytes]);
            r21 = **_kCFAllocatorDefault;
            r0 = objc_retainAutorelease(r22);
            r19 = CFArrayCreate(r21, [r0 bytes], objc_msgSend(r19, r20), *_kCFTypeArrayCallBacks);
            [r0 release];
    }
    else {
            r19 = 0x0;
    }
    r0 = [r19 autorelease];
    return r0;
}

@end