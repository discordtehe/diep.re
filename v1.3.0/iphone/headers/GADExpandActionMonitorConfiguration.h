// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADEXPANDACTIONMONITORCONFIGURATION_H
#define GADEXPANDACTIONMONITORCONFIGURATION_H


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class GADClickProtection;
@class GADFullScreenAdViewController;
@class GADSwappableView;

@interface GADExpandActionMonitorConfiguration : NSObject

@property (readonly, nonatomic) GADClickProtection *clickProtection; // ivar: _clickProtection
@property (readonly, weak, nonatomic) GADFullScreenAdViewController *presenter; // ivar: _presenter
@property (readonly, weak, nonatomic) GADSwappableView *swappableView; // ivar: _swappableView
@property (weak, nonatomic) UIView *referenceView; // ivar: _referenceView
@property (readonly, nonatomic) BOOL customCloseBlocked; // ivar: _customCloseBlocked
@property (readonly, nonatomic) BOOL analyticsLoggingEnabled; // ivar: _analyticsLoggingEnabled


-(id)initWithPresenter:(id)arg0 referenceView:(id)arg1 customCloseBlocked:(BOOL)arg2 clickProtection:(id)arg3 analyticsLoggingEnabled:(BOOL)arg4 ;
-(id)initWithSwappableView:(id)arg0 referenceView:(id)arg1 customCloseBlocked:(BOOL)arg2 clickProtection:(id)arg3 analyticsLoggingEnabled:(BOOL)arg4 ;


@end


#endif