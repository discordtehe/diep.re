// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCBROWSERCONTROL_H
#define ADCBROWSERCONTROL_H


#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@protocol ADCBrowserControlDelegate;

@interface ADCBrowserControl : UIButton {
    NSString *_clickAction;
    id<ADCBrowserControlDelegate> *_delegate;
}


@property (retain, nonatomic) UIButton *button; // ivar: _button
@property (retain, nonatomic) UIImage *imageNormal; // ivar: _imageNormal
@property (retain, nonatomic) UIImage *imageDown; // ivar: _imageDown
@property (retain, nonatomic) UIImageView *glow; // ivar: _glow


-(id)initWithFilePath:(id)arg0 glowImage:(id)arg1 delegate:(id)arg2 ;
-(void)setVisible:(BOOL)arg0 ;
-(void)dim;
-(void)notDim;
-(void)buttonPushed:(id)arg0 ;
-(void)buttonDown:(id)arg0 ;
-(void)buttonUp:(id)arg0 ;


@end


#endif