// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CUSTOMIOSALERTVIEW_H
#define CUSTOMIOSALERTVIEW_H


#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>


@interface CustomIOSAlertView : UIView {
    CGFloat buttonHeight;
    CGFloat buttonSpacerHeight;
    UIView *containerView;
    UIView *dialogView;
    UIView *parentView;
    AlertViewDelegate delegate;
    StyleConfig config;
    ? buttonConfigs;
}


@property ? buttonConfigs;
@property (retain, nonatomic) NSString *title; // ivar: title
@property (retain, nonatomic) NSString *message; // ivar: message
@property (nonatomic) BOOL useMotionEffects; // ivar: useMotionEffects
@property (nonatomic) BOOL usePleaseWaitSpinner; // ivar: usePleaseWaitSpinner
@property (nonatomic) BOOL closeOnTouchUpOutside; // ivar: closeOnTouchUpOutside
@property (nonatomic) int buttonAlignment; // ivar: _buttonAlignment
@property (copy) id *onButtonTouchUpInside; // ivar: onButtonTouchUpInside


-(id)initWithAlertDelegate:(struct AlertViewDelegate *)arg0 ;
-(void)customIOS7dialogButtonTouchUpInside:(id)arg0 ;
-(void)addButtonsToView:(id)arg0 ;
-(void)changeOrientationForIOS8:(id)arg0 ;
-(void)deviceOrientationDidChange:(id)arg0 ;
-(void)keyboardWillShow:(id)arg0 ;
-(void)keyboardWillHide:(id)arg0 ;
-(void)touchesEnded:(id)arg0 withEvent:(id)arg1 ;
+(id)viewWithAlertDelegate:(struct AlertViewDelegate *)arg0 ;


@end


#endif