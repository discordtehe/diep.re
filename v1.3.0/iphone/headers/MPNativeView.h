// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPNATIVEVIEW_H
#define MPNATIVEVIEW_H


#import <UIKit/UIKit.h>

@protocol MPNativeViewDelegate;

@interface MPNativeView : UIView

@property (weak, nonatomic) NSObject<MPNativeViewDelegate> *delegate; // ivar: _delegate


-(void)willMoveToSuperview:(id)arg0 ;


@end


#endif