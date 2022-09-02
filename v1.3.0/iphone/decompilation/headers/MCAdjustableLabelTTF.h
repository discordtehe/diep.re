// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCADJUSTABLELABELTTF_H
#define MCADJUSTABLELABELTTF_H


#import <Foundation/Foundation.h>

@class CCLabelTTF;

@interface MCAdjustableLabelTTF : CCLabelTTF {
    NSString *_stringToRender;
}


@property CGSize requestedDimensions; // ivar: _requestedDimensions
@property CGFloat maxFontSize; // ivar: _maxFontSize
@property (nonatomic) BOOL forceSingleLine; // ivar: _forceSingleLine


-(id)initWithString:(id)arg0 fontName:(id)arg1 fontSize:(CGFloat)arg2 dimensions:(struct CGSize )arg3 hAlignment:(int)arg4 vAlignment:(int)arg5 lineBreakMode:(int)arg6 ;
-(id)initWithString:(id)arg0 fontName:(id)arg1 fontSize:(CGFloat)arg2 dimensions:(struct CGSize )arg3 hAlignment:(int)arg4 vAlignment:(int)arg5 lineBreakMode:(int)arg6 singleLine:(BOOL)arg7 ;
-(BOOL)updateTexture;
-(void)fitDimentions;
-(void)setFontSize:(float)arg0 ;
-(void)updateTextureAsync;
-(void)setDimensions:(struct CGSize )arg0 ;
+(id)allocWithZone:(struct _NSZone *)arg0 ;
+(void)setMaxIterations:(unsigned int)arg0 ;
+(void)setStabilizationAceptableError:(float)arg0 ;
+(id)labelWithString:(id)arg0 fontName:(id)arg1 fontSize:(CGFloat)arg2 dimensions:(struct CGSize )arg3 hAlignment:(int)arg4 vAlignment:(int)arg5 lineBreakMode:(int)arg6 singleLine:(BOOL)arg7 ;


@end


#endif