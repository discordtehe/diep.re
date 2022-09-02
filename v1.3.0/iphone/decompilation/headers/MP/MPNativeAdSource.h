// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPNATIVEADSOURCE_H
#define MPNATIVEADSOURCE_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol MPNativeAdSourceQueueDelegate;
@protocol MPNativeAdSourceDelegate;

@interface MPNativeAdSource : NSObject <MPNativeAdSourceQueueDelegate>



@property (retain, nonatomic) NSMutableDictionary *adQueueDictionary; // ivar: _adQueueDictionary
@property (weak, nonatomic) NSObject<MPNativeAdSourceDelegate> *delegate; // ivar: _delegate
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithDelegate:(id)arg0 ;
-(void)dealloc;
-(void)loadAdsWithAdUnitIdentifier:(id)arg0 rendererConfigurations:(id)arg1 andTargeting:(id)arg2 ;
-(id)dequeueAdForAdUnitIdentifier:(id)arg0 ;
-(void)deleteCacheForAdUnitIdentifier:(id)arg0 ;
-(void)adSourceQueueAdIsAvailable:(id)arg0 ;


@end


#endif