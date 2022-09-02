@implementation CCMenuItemAtlasFont

+(void *)itemWithString:(void *)arg2 charMapFile:(void *)arg3 itemWidth:(int)arg4 itemHeight:(int)arg5 startCharMap:(char)arg6 {
    r0 = [CCMenuItemAtlasFont itemWithString:arg2 charMapFile:arg3 itemWidth:arg4 itemHeight:arg5 startCharMap:arg6 target:0x0 selector:0x0];
    return r0;
}

+(void *)itemWithString:(void *)arg2 charMapFile:(void *)arg3 itemWidth:(int)arg4 itemHeight:(int)arg5 startCharMap:(char)arg6 target:(void *)arg7 selector:(void *)arg8 {
    r0 = [self alloc];
    r0 = [r0 initWithString:arg2 charMapFile:arg3 itemWidth:arg4 itemHeight:arg5 startCharMap:arg6 target:arg7 selector:arg8];
    r0 = [r0 autorelease];
    return r0;
}

+(void *)itemWithString:(void *)arg2 charMapFile:(void *)arg3 itemWidth:(int)arg4 itemHeight:(int)arg5 startCharMap:(char)arg6 block:(void *)arg7 {
    r0 = [self alloc];
    r0 = [r0 initWithString:arg2 charMapFile:arg3 itemWidth:arg4 itemHeight:arg5 startCharMap:arg6 block:arg7];
    r0 = [r0 autorelease];
    return r0;
}

-(void *)initWithString:(void *)arg2 charMapFile:(void *)arg3 itemWidth:(int)arg4 itemHeight:(int)arg5 startCharMap:(char)arg6 target:(void *)arg7 selector:(void *)arg8 {
    r25 = sub_100330078(arg7);
    r19 = [self initWithString:arg2 charMapFile:arg3 itemWidth:arg4 itemHeight:arg5 startCharMap:arg6 block:r25];
    [r25 release];
    r0 = r19;
    return r0;
}

-(void *)initWithString:(void *)arg2 charMapFile:(void *)arg3 itemWidth:(int)arg4 itemHeight:(int)arg5 startCharMap:(char)arg6 block:(void *)arg7 {
    r19 = arg7;
    r23 = arg3;
    r24 = arg2;
    r25 = self;
    r0 = [CCLabelAtlas alloc];
    asm { sxtw       x4, w22 };
    asm { sxtw       x5, w21 };
    asm { sxtw       x6, w20 };
    r20 = [r0 initWithString:r24 charMapFile:r23 itemWidth:r4 itemHeight:r5 startCharMap:r6];
    r19 = [r25 initWithLabel:r20 block:r19];
    [r20 release];
    r0 = r19;
    return r0;
}

-(void)dealloc {
    [[&var_10 super] dealloc];
    return;
}

+(void *)itemFromString:(void *)arg2 charMapFile:(void *)arg3 itemWidth:(int)arg4 itemHeight:(int)arg5 startCharMap:(char)arg6 {
    r0 = [self itemWithString:arg2 charMapFile:arg3 itemWidth:arg4 itemHeight:arg5 startCharMap:arg6];
    return r0;
}

+(void *)itemFromString:(void *)arg2 charMapFile:(void *)arg3 itemWidth:(int)arg4 itemHeight:(int)arg5 startCharMap:(char)arg6 target:(void *)arg7 selector:(void *)arg8 {
    r0 = [self itemWithString:arg2 charMapFile:arg3 itemWidth:arg4 itemHeight:arg5 startCharMap:arg6 target:arg7 selector:arg8];
    return r0;
}

+(void *)itemFromString:(void *)arg2 charMapFile:(void *)arg3 itemWidth:(int)arg4 itemHeight:(int)arg5 startCharMap:(char)arg6 block:(void *)arg7 {
    r0 = [self itemWithString:arg2 charMapFile:arg3 itemWidth:arg4 itemHeight:arg5 startCharMap:arg6 block:arg7];
    return r0;
}

-(void *)initFromString:(void *)arg2 charMapFile:(void *)arg3 itemWidth:(int)arg4 itemHeight:(int)arg5 startCharMap:(char)arg6 target:(void *)arg7 selector:(void *)arg8 {
    r0 = [self initWithString:arg2 charMapFile:arg3 itemWidth:arg4 itemHeight:arg5 startCharMap:arg6 target:arg7 selector:arg8];
    return r0;
}

-(void *)initFromString:(void *)arg2 charMapFile:(void *)arg3 itemWidth:(int)arg4 itemHeight:(int)arg5 startCharMap:(char)arg6 block:(void *)arg7 {
    r0 = [self initWithString:arg2 charMapFile:arg3 itemWidth:arg4 itemHeight:arg5 startCharMap:arg6 block:arg7];
    return r0;
}

@end