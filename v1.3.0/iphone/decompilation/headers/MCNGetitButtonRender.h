// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCNGETITBUTTONRENDER_H
#define MCNGETITBUTTONRENDER_H


#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>


@interface MCNGetitButtonRender : UIButton {
    NSString *string;
    float fontSize;
    float scale;
    CGRect originalFrame;
}


@property (nonatomic, getter=isPressed) BOOL pressed; // ivar: pressed


-(id)initWithFrame:(struct CGRect )arg0 forScale:(float)arg1 ;
-(id)initWithFrame:(struct CGRect )arg0 ;
-(struct CGRect )originalFrame;
-(void)setButtonText:(id)arg0 ;
-(struct CGRect )adjustToButtonText:(id)arg0 ;
-(struct CGSize )sizeThatFits:(struct CGSize )arg0 ;
-(void)drawRect:(struct CGRect )arg0 ;
-(void)drawText;


@end


#endif