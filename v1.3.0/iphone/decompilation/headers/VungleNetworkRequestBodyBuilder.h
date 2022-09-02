// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VUNGLENETWORKREQUESTBODYBUILDER_H
#define VUNGLENETWORKREQUESTBODYBUILDER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class VunglePublisherInformationProvider;

@interface VungleNetworkRequestBodyBuilder : NSObject

@property (retain, nonatomic) VunglePublisherInformationProvider *publisherInformation; // ivar: _publisherInformation
@property (retain, nonatomic) NSArray *placements; // ivar: _placements
@property (retain, nonatomic) NSArray *placementReferences; // ivar: _placementReferences


-(id)initWithPublisherInformation:(id)arg0 ;
-(id)buildRequestBody;
-(id)buildApplicationParameters;
-(id)buildDeviceParameters;
-(id)buildRequestParameters;
-(id)buildSystemParameters;
-(id)buildSUserParameters;
-(id)buildExtensionParameters;


@end


#endif