// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADFLUIDCROPPINGADVIEW_H
#define GADFLUIDCROPPINGADVIEW_H


#import <UIKit/UIKit.h>

@class GADObserverCollection;

@interface GADFluidCroppingAdView : UIView {
    UIView *_view;
    GADObserverCollection *_observers;
    id *_messageSource;
}


@property (nonatomic) CGFloat contentHeight; // ivar: _contentHeight


-(id)initWithView:(id)arg0 messageSource:(id)arg1 ;
-(void)dealloc;
-(struct CGSize )intrinsicContentSize;
-(void)updateContentHeightValueFromNotification:(id)arg0 ;
-(void)layoutSubviews;


@end


#endif