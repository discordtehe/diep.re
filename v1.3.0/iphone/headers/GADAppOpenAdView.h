// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADAPPOPENADVIEW_H
#define GADAPPOPENADVIEW_H


#import <UIKit/UIKit.h>

@class GADObserverCollection;
@class GADAppOpenAd;

@interface GADAppOpenAdView : UIView {
    GADObserverCollection *_adObservers;
}


@property (retain, nonatomic) GADAppOpenAd *appOpenAd; // ivar: _appOpenAd
@property (copy, nonatomic) id *adCloseHandler; // ivar: _adCloseHandler


-(id)initWithFrame:(struct CGRect )arg0 ;
-(id)initWithCoder:(id)arg0 ;
-(void)commonInit;
-(id)description;
-(struct CGSize )sizeThatFits:(struct CGSize )arg0 ;
-(struct CGSize )intrinsicContentSize;
-(void)handleAdWillClose;


@end


#endif