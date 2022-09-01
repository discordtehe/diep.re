// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCMENUITEMFONT_H
#define CCMENUITEMFONT_H


#import <Foundation/Foundation.h>

@class CCMenuItemLabel;

@interface CCMenuItemFont : CCMenuItemLabel {
    NSUInteger _fontSize;
    NSString *_fontName;
}




-(id)initFromString:(id)arg0 target:(id)arg1 selector:(SEL)arg2 ;
-(id)initFromString:(id)arg0 block:(id)arg1 ;
-(id)initWithString:(id)arg0 target:(id)arg1 selector:(SEL)arg2 ;
-(id)initWithString:(id)arg0 block:(id)arg1 ;
-(void)recreateLabel;
-(void)setFontSize:(NSUInteger)arg0 ;
-(NSUInteger)fontSize;
-(void)setFontName:(id)arg0 ;
-(id)fontName;
+(id)itemFromString:(id)arg0 ;
+(id)itemFromString:(id)arg0 target:(id)arg1 selector:(SEL)arg2 ;
+(id)itemFromString:(id)arg0 block:(id)arg1 ;
+(void)setFontSize:(NSUInteger)arg0 ;
+(NSUInteger)fontSize;
+(void)setFontName:(id)arg0 ;
+(id)fontName;
+(id)itemWithString:(id)arg0 target:(id)arg1 selector:(SEL)arg2 ;
+(id)itemWithString:(id)arg0 ;
+(id)itemWithString:(id)arg0 block:(id)arg1 ;


@end


#endif