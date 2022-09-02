// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCFONTDEFINITION_H
#define CCFONTDEFINITION_H


#import <Foundation/Foundation.h>


@interface CCFontDefinition : NSObject {
    _ccFontShadow _shadow;
    _ccFontStroke _stroke;
}


@property (copy, nonatomic) NSString *fontName; // ivar: _fontName
@property (nonatomic) int fontSize; // ivar: _fontSize
@property (nonatomic) int alignment; // ivar: _alignment
@property (nonatomic) int vertAlignment; // ivar: _vertAlignment
@property (nonatomic) int lineBreakMode; // ivar: _lineBreakMode
@property (nonatomic) CGSize dimensions; // ivar: _dimensions
@property (nonatomic) _ccColorThreeB fontFillColor; // ivar: _fontFillColor


-(id)init;
-(id)initWithFontName:(id)arg0 fontSize:(int)arg1 ;
-(void)dealloc;
-(void)enableShadow:(BOOL)arg0 ;
-(BOOL)shadowEnabled;
-(void)setShadowOffset:(struct CGSize )arg0 ;
-(struct CGSize )shadowOffset;
-(void)setShadowBlur:(float)arg0 ;
-(float)shadowBlur;
-(void)setShadowOpacity:(float)arg0 ;
-(float)shadowOpacity;
-(void)setShadowColor:(struct _ccColorThreeB )arg0 ;
-(struct _ccColorThreeB )shadowColor;
-(void)enableStroke:(BOOL)arg0 ;
-(BOOL)strokeEnabled;
-(void)setStrokeSize:(CGFloat)arg0 ;
-(CGFloat)strokeSize;
-(void)setStrokeColor:(struct _ccColorThreeB )arg0 ;
-(struct _ccColorThreeB )strokeColor;


@end


#endif