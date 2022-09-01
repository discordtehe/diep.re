// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCNATIVEADSESSION_H
#define ADCNATIVEADSESSION_H



@class ADCAdSession;
@class AdColonyNativeAdView;

@interface ADCNativeAdSession : ADCAdSession

@property (retain, nonatomic) AdColonyNativeAdView *nativeAd; // ivar: _nativeAd
@property (nonatomic) CGSize size; // ivar: _size
@property (copy, nonatomic) id *requestSuccess; // ivar: _requestSuccess
@property (copy, nonatomic) id *requestFailure; // ivar: _requestFailure


-(void)pollViewability;


@end


#endif