// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADCONTAINERADVIEW_H
#define GADCONTAINERADVIEW_H


#import <CoreFoundation/CoreFoundation.h>
#import <UIKit/UIKit.h>

@class GADView;
@class GADObserverCollection;

@interface GADContainerAdView : GADView {
    NSArray *_fixedSizeConstraints;
    GADObserverCollection *_observer;
}


@property (retain, nonatomic) UIView *view; // ivar: _view
@property (weak, nonatomic) id *resizeMessageSource; // ivar: _resizeMessageSource


-(id)initWithFrame:(struct CGRect )arg0 context:(id)arg1 ;
-(void)dealloc;
-(struct CGSize )intrinsicContentSize;
-(void)constrainSubviewToSize:(struct CGSize )arg0 ;


@end


#endif