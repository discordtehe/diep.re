// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef APMMONITORINGSAMPLEDDATA_H
#define APMMONITORINGSAMPLEDDATA_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface APMMonitoringSampledData : NSObject {
    NSMutableArray *_sampledData;
}




-(id)initWithArray:(id)arg0 ;
-(void)insertOrUpdateSampledDataWithKey:(id)arg0 encodedContext:(id)arg1 ;
-(id)monitoringDataForDispatchWithSamplePeriod:(CGFloat)arg0 lastSampledTimestamp:(CGFloat)arg1 ;
-(id)sampledData;
+(BOOL)isValidUserDefaultsArrayEntry:(id)arg0 ;
+(id)monitoringURLParamWithKey:(id)arg0 population:(id)arg1 context:(id)arg2 ;
+(id)sampledDataEntryWithKey:(id)arg0 timestamp:(id)arg1 context:(id)arg2 population:(id)arg3 ;


@end


#endif