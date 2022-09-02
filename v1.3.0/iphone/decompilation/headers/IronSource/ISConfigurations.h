// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ISCONFIGURATIONS_H
#define ISCONFIGURATIONS_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class ISSegment;

@interface ISConfigurations : NSObject

@property (retain, nonatomic) NSString *userId; // ivar: _userId
@property (retain, nonatomic) NSString *appKey; // ivar: _appKey
@property (retain, nonatomic) NSString *mediationSegment; // ivar: _mediationSegment
@property (retain, nonatomic) NSString *segmentId; // ivar: _segmentId
@property (retain, nonatomic) NSDictionary *customSegmentParams; // ivar: _customSegmentParams
@property (retain, nonatomic) ISSegment *segment; // ivar: _segment
@property (retain, nonatomic) NSDictionary *rewardedVideoCustomParameters; // ivar: _rewardedVideoCustomParameters
@property (retain, nonatomic) NSDictionary *offerwallCustomParameters; // ivar: _offerwallCustomParameters
@property (retain, nonatomic) NSString *version; // ivar: _version
@property (retain, nonatomic) NSNumber *adapterTimeOutInSeconds; // ivar: _adapterTimeOutInSeconds
@property (retain, nonatomic) NSNumber *maxNumOfAdaptersToLoadOnStart; // ivar: _maxNumOfAdaptersToLoadOnStart
@property (retain, nonatomic) NSString *plugin; // ivar: _plugin
@property (retain, nonatomic) NSString *pluginVersion; // ivar: _pluginVersion
@property (retain, nonatomic) NSString *pluginFrameworkVersion; // ivar: _pluginFrameworkVersion
@property (retain, nonatomic) NSNumber *maxVideosPerIteration; // ivar: _maxVideosPerIteration
@property (nonatomic) NSInteger userAge; // ivar: _userAge
@property (nonatomic) NSInteger userGender; // ivar: _userGender
@property (nonatomic) BOOL trackReachability; // ivar: _trackReachability
@property (retain, nonatomic) NSString *dynamicUserId; // ivar: _dynamicUserId
@property (nonatomic) BOOL adaptersDebug; // ivar: _adaptersDebug
@property (retain, nonatomic) NSString *mediationType; // ivar: _mediationType
@property (retain, nonatomic) NSNumber *serr; // ivar: _serr
@property (retain, nonatomic) NSString *categorizeType; // ivar: _categorizeType
@property (retain, nonatomic) NSDictionary *rvServerParams; // ivar: _rvServerParams
@property (nonatomic) NSInteger consent; // ivar: _consent
@property (retain, nonatomic) NSDictionary *batchGenricParams; // ivar: _batchGenricParams
@property (retain, nonatomic) NSDictionary *eventGenricParams; // ivar: _eventGenricParams


-(id)init;
-(BOOL)shouldAddPluginType:(id)arg0 ;
+(id)configurations;
+(id)getConfigurations;


@end


#endif