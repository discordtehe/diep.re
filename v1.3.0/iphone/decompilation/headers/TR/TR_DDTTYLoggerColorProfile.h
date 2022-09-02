// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TR_DDTTYLOGGERCOLORPROFILE_H
#define TR_DDTTYLOGGERCOLORPROFILE_H


#import <Foundation/Foundation.h>


@interface TR_DDTTYLoggerColorProfile : NSObject {
    NSUInteger mask;
    NSInteger context;
    unsigned char fg_r;
    unsigned char fg_g;
    unsigned char fg_b;
    unsigned char bg_r;
    unsigned char bg_g;
    unsigned char bg_b;
    NSUInteger fgCodeIndex;
    NSString *fgCodeRaw;
    NSUInteger bgCodeIndex;
    NSString *bgCodeRaw;
    char fgCode;
    NSUInteger fgCodeLen;
    char bgCode;
    NSUInteger bgCodeLen;
    char resetCode;
    NSUInteger resetCodeLen;
}




-(id)initWithForegroundColor:(struct UIColor *)arg0 backgroundColor:(struct UIColor *)arg1 flag:(NSUInteger)arg2 context:(NSInteger)arg3 ;
-(id)description;


@end


#endif