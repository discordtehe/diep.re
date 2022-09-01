// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ISADAPTERCONFIG_H
#define ISADAPTERCONFIG_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface ISAdapterConfig : NSObject

@property (readonly, nonatomic) NSDictionary *settings; // ivar: _settings
@property (readonly, nonatomic) NSString *providerName; // ivar: _providerName
@property (readonly, nonatomic) NSString *reflectionName; // ivar: _reflectionName
@property (readonly, nonatomic) NSString *name;
@property (readonly, nonatomic) NSString *requestUrl;
@property (readonly, nonatomic) NSString *subAdapterId;
@property (readonly, nonatomic) NSString *instanceId;
@property (readonly, nonatomic) NSNumber *maxAdsPerIteration;
@property (readonly, nonatomic) NSNumber *maxAdsPerSession;
@property (readonly, nonatomic) NSInteger maxAdsPerDay;
@property (readonly, nonatomic) CGFloat loadTimeOutSec; // ivar: _loadTimeOutSec
@property (readonly, nonatomic) BOOL isMultiProviderInstance;
@property (readonly, nonatomic) NSString *adSourceNameForEvent;


-(id)initWithProviderName:(id)arg0 ;
-(void)setLoadTimeOut:(CGFloat)arg0 ;
-(NSInteger)compare:(id)arg0 ;
-(BOOL)isEqual:(id)arg0 ;


@end


#endif