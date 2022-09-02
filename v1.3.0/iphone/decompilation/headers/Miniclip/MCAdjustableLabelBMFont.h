// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCADJUSTABLELABELBMFONT_H
#define MCADJUSTABLELABELBMFONT_H


#import <Foundation/Foundation.h>

@class CCLabelBMFont;

@interface MCAdjustableLabelBMFont : CCLabelBMFont {
    float mHeight;
    float mMaxFontScale;
    CGSize mMaxDimensions;
    NSString *mOriginalString;
}


@property (nonatomic) CGSize dimensions;
@property (nonatomic) CGSize maxDimensions; // ivar: _maxDimensions
@property (nonatomic) int horizontalAlignment;
@property (readonly, nonatomic) float fontScale; // ivar: mFontScale
@property (nonatomic) BOOL forceSingleLine; // ivar: mForceSingleLine


-(id)initWithString:(id)arg0 fntFile:(id)arg1 dimensions:(struct CGSize )arg2 hAlignment:(int)arg3 ;
-(id)initWithString:(id)arg0 fntFile:(id)arg1 dimensions:(struct CGSize )arg2 hAlignment:(int)arg3 imageOffset:(struct CGPoint )arg4 ;
-(id)initWithString:(id)arg0 fntFile:(id)arg1 dimensions:(struct CGSize )arg2 hAlignment:(int)arg3 imageOffset:(struct CGPoint )arg4 maxScale:(float)arg5 ;
-(id)initWithString:(id)arg0 fntFile:(id)arg1 dimensions:(struct CGSize )arg2 hAlignment:(int)arg3 imageOffset:(struct CGPoint )arg4 maxScale:(float)arg5 singleLine:(BOOL)arg6 ;
-(id)initWithString:(id)arg0 fntFile:(id)arg1 width:(float)arg2 alignment:(int)arg3 imageOffset:(struct CGPoint )arg4 ;
-(void)setWidth:(float)arg0 ;
-(void)setHeight:(float)arg0 ;
-(float)scaleX;
-(float)scaleY;
-(float)scale;
-(void)setScaleY:(float)arg0 ;
-(void)setScaleX:(float)arg0 ;
-(void)setScale:(float)arg0 ;
-(void)setImageOffset:(struct CGPoint )arg0 ;
-(struct CGSize )contentSize;
-(void)setString:(id)arg0 ;
-(void)dealloc;
-(void)updateLabel;
-(struct CGPoint )anchorPointInPoints;
-(id)computeMultiline:(*CGFloat)arg0 withSize:(float)arg1 ;
-(CGFloat)getTextHeight:(id)arg0 withSize:(float)arg1 ;
-(void)fitDimentions;
-(void)setMaxFontScale:(CGFloat)arg0 ;
-(CGFloat)maxFontScale;
-(void)didLoadFromCCB;
+(void)setMaxIterations:(unsigned int)arg0 ;
+(void)setStabilizationAceptableError:(float)arg0 ;
+(id)labelWithString:(id)arg0 fntFile:(id)arg1 dimensions:(struct CGSize )arg2 hAlignment:(int)arg3 ;
+(id)labelWithString:(id)arg0 fntFile:(id)arg1 dimensions:(struct CGSize )arg2 hAlignment:(int)arg3 imageOffset:(struct CGPoint )arg4 ;
+(id)labelWithString:(id)arg0 fntFile:(id)arg1 dimensions:(struct CGSize )arg2 hAlignment:(int)arg3 imageOffset:(struct CGPoint )arg4 maxScale:(float)arg5 ;
+(id)labelWithString:(id)arg0 fntFile:(id)arg1 dimensions:(struct CGSize )arg2 hAlignment:(int)arg3 imageOffset:(struct CGPoint )arg4 maxScale:(float)arg5 singleLine:(BOOL)arg6 ;


@end


#endif