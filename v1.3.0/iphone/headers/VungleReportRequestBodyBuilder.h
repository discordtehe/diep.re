// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VUNGLEREPORTREQUESTBODYBUILDER_H
#define VUNGLEREPORTREQUESTBODYBUILDER_H


#import <CoreFoundation/CoreFoundation.h>

@class VungleNetworkRequestBodyBuilder;

@interface VungleReportRequestBodyBuilder : VungleNetworkRequestBodyBuilder

@property (retain, nonatomic) NSDictionary *reportDictionary; // ivar: _reportDictionary


-(id)initWithReportInfo:(id)arg0 publisherInformation:(id)arg1 ;
-(id)buildRequestParameters;


@end


#endif