// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADCROPPINGADVIEW_H
#define GADCROPPINGADVIEW_H


#import <UIKit/UIKit.h>

@class GADView;
@class GADObserverCollection;

@interface GADCroppingAdView : GADView {
    UIView *_view;
    id *_messageSource;
    GADObserverCollection *_observers;
}


@property (nonatomic) CGSize contentSize; // ivar: _contentSize


-(id)initWithView:(id)arg0 size:(struct CGSize )arg1 context:(id)arg2 messageSource:(id)arg3 ;
-(void)dealloc;
-(void)setUpSubview:(id)arg0 ;
-(void)mediationBannerInnerRefreshWithView:(id)arg0 ;
-(void)layoutSubviews;
-(struct CGSize )intrinsicContentSize;
-(void)updateAdSizeFromNotification:(id)arg0 ;


@end


#endif