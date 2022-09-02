// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADSWAPPABLEVIEW_H
#define GADSWAPPABLEVIEW_H


#import <UIKit/UIKit.h>

@class GADView;

@interface GADSwappableView : GADView {
    UIView *_viewToSwap;
    UIView *_snapshotView;
}




-(id)initWithViewToSwap:(id)arg0 context:(id)arg1 ;
-(void)dealloc;
-(struct CGSize )intrinsicContentSize;
-(void)addSubview:(id)arg0 ;
-(void)swapViewForImage;
-(void)restoreSwappedView;


@end


#endif