// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADAPPOPENAD_H
#define GADAPPOPENAD_H


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class GADObserverCollection;
@class GADAppOpenAdView;

@interface GADAppOpenAd : NSObject {
    GADObserverCollection *_observers;
}


@property (readonly, nonatomic) id *adMessageSource; // ivar: _adMessageSource
@property (readonly, nonatomic) UIView *adView; // ivar: _adView
@property (weak, nonatomic) GADAppOpenAdView *appOpenAdView; // ivar: _appOpenAdView
@property (readonly, nonatomic) BOOL hasBeenShown; // ivar: _hasBeenShown


-(id)initWithAdMessageSource:(id)arg0 adView:(id)arg1 ;
-(id)init;
+(void)loadWithAdUnitID:(id)arg0 request:(id)arg1 orientation:(NSInteger)arg2 completionHandler:(id)arg3 ;
+(void)updateTargeting:(id)arg0 orientation:(NSInteger)arg1 ;
+(void)loadWithTargeting:(id)arg0 completionHandler:(id)arg1 ;


@end


#endif