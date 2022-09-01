// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPIMPRESSIONDATA_H
#define MPIMPRESSIONDATA_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface MPImpressionData : NSObject

@property (nonatomic) NSInteger precision; // ivar: _precision
@property (copy, nonatomic) NSData *jsonRepresentation; // ivar: _jsonRepresentation
@property (copy, nonatomic) NSDictionary *impressionDataDictionary; // ivar: _impressionDataDictionary
@property (nonatomic) BOOL isPrecisionSet; // ivar: _isPrecisionSet
@property (readonly, copy, nonatomic) NSNumber *publisherRevenue;
@property (readonly, copy, nonatomic) NSString *impressionID;
@property (readonly, copy, nonatomic) NSString *adUnitID;
@property (readonly, copy, nonatomic) NSString *adUnitName;
@property (readonly, copy, nonatomic) NSString *adUnitFormat;
@property (readonly, copy, nonatomic) NSString *currency;
@property (readonly, copy, nonatomic) NSString *adGroupID;
@property (readonly, copy, nonatomic) NSString *adGroupName;
@property (readonly, copy, nonatomic) NSString *adGroupType;
@property (readonly, copy, nonatomic) NSNumber *adGroupPriority;
@property (readonly, copy, nonatomic) NSString *country;
@property (readonly, copy, nonatomic) NSString *networkName;
@property (readonly, copy, nonatomic) NSString *networkPlacementID;


-(id)initWithDictionary:(id)arg0 ;
-(id)nullableImpressionDataObjectForKey:(id)arg0 ;
-(id)description;


@end


#endif