// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPCLOSABLEVIEW_H
#define MPCLOSABLEVIEW_H


#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@class MPUserInteractionGestureRecognizer;
@protocol UIGestureRecognizerDelegate;
@protocol MPClosableViewDelegate;

@interface MPClosableView : UIView <UIGestureRecognizerDelegate>



@property (retain, nonatomic) UIButton *closeButton; // ivar: _closeButton
@property (retain, nonatomic) UIImage *closeButtonImage; // ivar: _closeButtonImage
@property (retain, nonatomic) MPUserInteractionGestureRecognizer *userInteractionRecognizer; // ivar: _userInteractionRecognizer
@property (nonatomic) BOOL wasTapped; // ivar: _wasTapped
@property (weak, nonatomic) NSObject<MPClosableViewDelegate> *delegate; // ivar: _delegate
@property (nonatomic) NSInteger closeButtonType; // ivar: _closeButtonType
@property (nonatomic) NSInteger closeButtonLocation; // ivar: _closeButtonLocation
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithFrame:(struct CGRect )arg0 webView:(id)arg1 delegate:(id)arg2 ;
-(void)dealloc;
-(void)layoutSubviews;
-(void)didMoveToWindow;
-(void)handleInteraction:(id)arg0 ;
-(BOOL)gestureRecognizer:(id)arg0 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)arg1 ;


@end


#endif