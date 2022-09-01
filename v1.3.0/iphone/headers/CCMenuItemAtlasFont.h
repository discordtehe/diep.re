// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCMENUITEMATLASFONT_H
#define CCMENUITEMATLASFONT_H



@class CCMenuItemLabel;

@interface CCMenuItemAtlasFont : CCMenuItemLabel



-(id)initFromString:(id)arg0 charMapFile:(id)arg1 itemWidth:(int)arg2 itemHeight:(int)arg3 startCharMap:(char)arg4 target:(id)arg5 selector:(SEL)arg6 ;
-(id)initFromString:(id)arg0 charMapFile:(id)arg1 itemWidth:(int)arg2 itemHeight:(int)arg3 startCharMap:(char)arg4 block:(id)arg5 ;
-(id)initWithString:(id)arg0 charMapFile:(id)arg1 itemWidth:(int)arg2 itemHeight:(int)arg3 startCharMap:(char)arg4 target:(id)arg5 selector:(SEL)arg6 ;
-(id)initWithString:(id)arg0 charMapFile:(id)arg1 itemWidth:(int)arg2 itemHeight:(int)arg3 startCharMap:(char)arg4 block:(id)arg5 ;
-(void)dealloc;
+(id)itemFromString:(id)arg0 charMapFile:(id)arg1 itemWidth:(int)arg2 itemHeight:(int)arg3 startCharMap:(char)arg4 ;
+(id)itemFromString:(id)arg0 charMapFile:(id)arg1 itemWidth:(int)arg2 itemHeight:(int)arg3 startCharMap:(char)arg4 target:(id)arg5 selector:(SEL)arg6 ;
+(id)itemFromString:(id)arg0 charMapFile:(id)arg1 itemWidth:(int)arg2 itemHeight:(int)arg3 startCharMap:(char)arg4 block:(id)arg5 ;
+(id)itemWithString:(id)arg0 charMapFile:(id)arg1 itemWidth:(int)arg2 itemHeight:(int)arg3 startCharMap:(char)arg4 ;
+(id)itemWithString:(id)arg0 charMapFile:(id)arg1 itemWidth:(int)arg2 itemHeight:(int)arg3 startCharMap:(char)arg4 target:(id)arg5 selector:(SEL)arg6 ;
+(id)itemWithString:(id)arg0 charMapFile:(id)arg1 itemWidth:(int)arg2 itemHeight:(int)arg3 startCharMap:(char)arg4 block:(id)arg5 ;


@end


#endif