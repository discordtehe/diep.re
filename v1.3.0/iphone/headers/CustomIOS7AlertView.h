// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CUSTOMIOS7ALERTVIEW_H
#define CUSTOMIOS7ALERTVIEW_H


#import <UIKit/UIKit.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol CustomIOS7AlertViewDelegate;
@protocol CustomIOS7AlertViewDelegate;

@interface CustomIOS7AlertView : UIView <CustomIOS7AlertViewDelegate>



@property (retain, nonatomic) UIView *parentView; // ivar: parentView
@property (retain, nonatomic) UIView *dialogView; // ivar: dialogView
@property (retain, nonatomic) UIView *containerView; // ivar: containerView
@property (retain, nonatomic) UIView *buttonView; // ivar: buttonView
@property (nonatomic) NSObject<CustomIOS7AlertViewDelegate> *delegate; // ivar: delegate
@property (retain, nonatomic) NSArray *buttonTitles; // ivar: buttonTitles
@property (nonatomic) BOOL useMotionEffects; // ivar: useMotionEffects
@property (copy) id *onButtonTouchUpInside; // ivar: onButtonTouchUpInside


-(id)initWithParentView:(id)arg0 ;
-(id)init;
-(void)show;
-(void)customIOS7dialogButtonTouchUpInside:(id)arg0 ;
-(void)customIOS7dialogButtonTouchUpInside:(id)arg0 clickedButtonAtIndex:(NSInteger)arg1 ;
-(void)close;
-(void)close:(id)arg0 ;
-(void)setSubView:(id)arg0 ;
-(id)createContainerView;
-(void)addButtonsToView:(id)arg0 ;
-(void)applyMotionEffects;
-(void)deviceOrientationDidChange:(id)arg0 ;
-(void)dealloc;


@end


#endif