// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADMEDIAVIEW_H
#define GADMEDIAVIEW_H


#import <UIKit/UIKit.h>

@class GADMediaContent;
@class GADObserverCollection;
@protocol GADMediaContentDisplaying;

@interface GADMediaView : UIView {
    id<GADMediaContentDisplaying> *_internalMediaContent;
    GADMediaContent *_mediaContent;
    UIView *_mediaView;
    GADObserverCollection *_observers;
}


@property (retain, nonatomic) GADMediaContent *mediaContent;


-(id)initWithFrame:(struct CGRect )arg0 ;
-(struct CGSize )intrinsicContentSize;
-(void)setInternalMediaContent:(id)arg0 ;
-(void)setContentMode:(NSInteger)arg0 ;


@end


#endif