// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADNATIVEADATTRIBUTIONVIEW_H
#define GADNATIVEADATTRIBUTIONVIEW_H


#import <UIKit/UIKit.h>
#import <CoreFoundation/CoreFoundation.h>

@class GADPushTransitionView;

@interface GADNativeAdAttributionView : UIView {
    GADPushTransitionView *_iconView;
    UILabel *_textView;
    UIView *_textPaddingLeft;
    UIView *_textPaddingRight;
    NSArray *_dynamicConstraints;
}


@property (readonly, nonatomic) UIView *iconView;
@property (readonly, nonatomic) UIView *textView;


-(id)initWithFrame:(struct CGRect )arg0 ;
-(id)initWithAttribution:(id)arg0 ;
-(void)setAttribution:(id)arg0 ;
-(void)layoutSubviews;


@end


#endif