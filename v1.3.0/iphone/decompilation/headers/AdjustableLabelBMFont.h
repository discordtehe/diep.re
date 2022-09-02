// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADJUSTABLELABELBMFONT_H
#define ADJUSTABLELABELBMFONT_H



@class CCLabelBMFont;

@interface AdjustableLabelBMFont : CCLabelBMFont {
    float width_;
    float _height;
    BOOL multiline_;
    float minimumScale_;
    float maximumScale_;
    BOOL _updateLabel;
}




-(id)labelWithString:(id)arg0 fntFile:(id)arg1 width:(float)arg2 ;
-(id)initWithString:(id)arg0 fntFile:(id)arg1 width:(float)arg2 height:(float)arg3 multiline:(BOOL)arg4 minimumScale:(float)arg5 alignment:(int)arg6 ;
-(id)init;
-(void)updateLabel;
-(void)setConfigDimensions:(struct CGSize )arg0 ;
-(void)setHeight:(float)arg0 ;
-(void)setWidth:(float)arg0 ;
-(struct CGSize )configDimensions;
-(void)setMultiline:(BOOL)arg0 ;
-(void)setMinimumScale:(float)arg0 ;
-(void)setMaximumScale:(float)arg0 ;
-(float)height;
-(float)width;
-(BOOL)multiline;
-(float)minimumScale;
-(float)maximumScale;
+(id)labelWithString:(id)arg0 fntFile:(id)arg1 width:(float)arg2 ;
+(id)labelWithString:(id)arg0 fntFile:(id)arg1 width:(float)arg2 alignment:(int)arg3 ;
+(id)labelWithString:(id)arg0 fntFile:(id)arg1 width:(float)arg2 height:(float)arg3 multiline:(BOOL)arg4 minimumScale:(float)arg5 alignment:(int)arg6 ;


@end


#endif