// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADDISPLAYADMEASUREMENT_H
#define GADDISPLAYADMEASUREMENT_H


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class GADInternalNativeAd;

@interface GADDisplayAdMeasurement : NSObject {
    atomic_flag _sessionStarted;
    GADInternalNativeAd *_internalNativeAd;
}


@property (weak, nonatomic) UIView *view; // ivar: _view


-(id)initWithInternalNativeAd:(id)arg0 ;
-(BOOL)startWithError:(*id)arg0 ;


@end


#endif