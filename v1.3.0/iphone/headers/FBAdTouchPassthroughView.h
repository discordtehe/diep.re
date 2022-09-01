// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADTOUCHPASSTHROUGHVIEW_H
#define FBADTOUCHPASSTHROUGHVIEW_H

@protocol FBAdTouchPassthroughViewDelegate;

#import <UIKit/UIKit.h>


@interface FBAdTouchPassthroughView : UIView

@property (weak, nonatomic) UIView *passthroughView; // ivar: _passthroughView
@property (weak, nonatomic) NSObject<FBAdTouchPassthroughViewDelegate> *delegate; // ivar: _delegate


-(id)hitTest:(struct CGPoint )arg0 withEvent:(id)arg1 ;
+(void)initialize;


@end


#endif