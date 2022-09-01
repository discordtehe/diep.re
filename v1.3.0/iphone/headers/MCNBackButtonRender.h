// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCNBACKBUTTONRENDER_H
#define MCNBACKBUTTONRENDER_H


#import <UIKit/UIKit.h>


@interface MCNBackButtonRender : UIButton {
    CGRect originalFrame;
    float scale;
}


@property (nonatomic, getter=isPressed) BOOL pressed; // ivar: pressed


-(id)initWithFrame:(struct CGRect )arg0 forScale:(float)arg1 ;
-(id)initWithFrame:(struct CGRect )arg0 ;
-(struct CGRect )moveHorizontally:(CGFloat)arg0 ;
-(struct CGRect )resetPosition;
-(struct CGSize )sizeThatFits:(struct CGSize )arg0 ;
-(void)drawRect:(struct CGRect )arg0 ;


@end


#endif