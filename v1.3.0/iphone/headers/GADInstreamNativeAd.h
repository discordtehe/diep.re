// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADINSTREAMNATIVEAD_H
#define GADINSTREAMNATIVEAD_H


#import <Foundation/Foundation.h>

@class GADInternalNativeAd;
@protocol GADMediaContentDisplaying;

@interface GADInstreamNativeAd : NSObject {
    GADInternalNativeAd *_internalNativeAd;
}


@property (readonly, nonatomic) NSObject<GADMediaContentDisplaying> *mediaContent; // ivar: _mediaContent


-(id)initWithInternalNativeAd:(id)arg0 ;


@end


#endif