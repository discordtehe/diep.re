// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADREQUEST_H
#define GADREQUEST_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class GADLocation;
@class GADAdData;
@protocol NSCopying;

@interface GADRequest : NSObject <NSCopying>

 {
    NSMutableDictionary *_networkExtrasMap;
    unsigned int _previousRequestCount;
    NSNumber *_childDirectedTreatment;
    GADLocation *_location;
    GADAdData *_adData;
}


@property (copy, nonatomic) NSArray *adTypes; // ivar: _adTypes
@property (copy, nonatomic) NSString *requestOrigin; // ivar: _requestOrigin
@property (readonly, nonatomic) NSDictionary *additionalSignals;
@property (readonly, nonatomic) GADLocation *location;
@property (readonly, nonatomic) NSNumber *childDirectedTreatment;
@property (readonly, nonatomic) NSDictionary *networkExtrasMap;
@property (copy, nonatomic) NSDictionary *customTargeting; // ivar: _customTargeting
@property (copy, nonatomic) NSString *publisherProvidedID; // ivar: _publisherProvidedID
@property (copy, nonatomic) NSArray *categoryExclusions; // ivar: _categoryExclusions
@property (copy, nonatomic) NSArray *testDevices; // ivar: _testDevices
@property (copy, nonatomic) NSArray *keywords; // ivar: _keywords
@property (copy, nonatomic) NSString *contentURL; // ivar: _contentURL
@property (copy, nonatomic) NSString *requestAgent; // ivar: _requestAgent
@property (nonatomic) NSInteger gender; // ivar: _gender
@property (copy, nonatomic) NSDate *birthday; // ivar: _birthday


-(id)copyWithZone:(struct _NSZone *)arg0 ;
-(void)registerAdNetworkExtras:(id)arg0 ;
-(id)adNetworkExtrasFor:(Class)arg0 ;
-(void)removeAdNetworkExtrasFor:(Class)arg0 ;
-(void)tagForChildDirectedTreatment:(BOOL)arg0 ;
-(id)adData;
-(void)setAdData:(id)arg0 ;
+(id)request;
+(void)initialize;
+(id)sdkVersion;
+(void)updateCorrelator;


@end


#endif