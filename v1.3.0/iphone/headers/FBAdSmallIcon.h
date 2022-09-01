// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADSMALLICON_H
#define FBADSMALLICON_H


#import <UIKit/UIKit.h>


@interface FBAdSmallIcon : UIView

@property (nonatomic) NSUInteger style; // ivar: _style
@property (retain, nonatomic) UIColor *color; // ivar: _color


-(id)initWithStyle:(NSUInteger)arg0 color:(id)arg1 ;
-(void)drawRect:(struct CGRect )arg0 ;
-(void)drawANLogoRect:(struct CGRect )arg0 ;
-(void)drawInfoRect:(struct CGRect )arg0 ;
-(void)drawStarRect:(struct CGRect )arg0 ;
-(void)drawAdChoicesRect:(struct CGRect )arg0 ;
-(void)drawAppleRect:(struct CGRect )arg0 ;
-(void)drawGlobeRect:(struct CGRect )arg0 ;
-(void)drawBigStarRect:(struct CGRect )arg0 ;
+(CGFloat)iconWidthAndHeight;


@end


#endif