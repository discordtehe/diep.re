// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADINTROSCREENVIEW_H
#define FBADINTROSCREENVIEW_H


#import <UIKit/UIKit.h>

@class FBAdDetailsVerticalView;

@interface FBAdIntroScreenView : UIView

@property (weak, nonatomic) FBAdDetailsVerticalView *adDetailsView; // ivar: _adDetailsView


-(id)initWithTitle:(id)arg0 subtitle:(id)arg1 iconURL:(id)arg2 iconStyle:(NSUInteger)arg3 ;
-(void)setupAdDetailsViewWithTitle:(id)arg0 subtitle:(id)arg1 iconURL:(id)arg2 iconStyle:(NSUInteger)arg3 ;
-(void)layoutSubviews;


@end


#endif