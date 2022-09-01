// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADSTORIESPAGEINDICATOR_H
#define FBADSTORIESPAGEINDICATOR_H


#import <UIKit/UIKit.h>
#import <CoreFoundation/CoreFoundation.h>


@interface FBAdStoriesPageIndicator : UIView

@property (copy, nonatomic) NSArray *items; // ivar: _items
@property (retain, nonatomic) UIStackView *stackView; // ivar: _stackView
@property (nonatomic) CGFloat progress; // ivar: _progress


-(id)init;
-(void)setup;
-(void)layoutSubviews;
-(void)configureWithProgress:(CGFloat)arg0 totalProgress:(CGFloat)arg1 ;


@end


#endif