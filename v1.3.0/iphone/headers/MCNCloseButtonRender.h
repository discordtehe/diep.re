// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCNCLOSEBUTTONRENDER_H
#define MCNCLOSEBUTTONRENDER_H


#import <UIKit/UIKit.h>


@interface MCNCloseButtonRender : UIButton

@property (nonatomic, getter=isPressed) BOOL pressed; // ivar: pressed


-(id)initWithFrame:(struct CGRect )arg0 ;
-(id)initWithCoder:(id)arg0 ;
-(struct CGSize )sizeThatFits:(struct CGSize )arg0 ;
-(void)drawRect:(struct CGRect )arg0 ;


@end


#endif