// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ANSSETTINGS_H
#define ANSSETTINGS_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface ANSSettings : NSObject

@property (readonly, nonatomic) NSDictionary *settingsDictionary; // ivar: _settingsDictionary
@property (readonly, nonatomic) BOOL valid;
@property (readonly, nonatomic) NSURL *answersURL;
@property (readonly, nonatomic) BOOL shouldCollectAnalytics;
@property (readonly, nonatomic) BOOL shouldCollectCustomEvents;
@property (readonly, nonatomic) BOOL shouldCollectPredefinedEvents;
@property (readonly, nonatomic) BOOL shouldForwardToFirebaseAnalytics;
@property (readonly, nonatomic) BOOL shouldIncludePurchaseEventsInForwardedFirebaseEvents;
@property (readonly, nonatomic) NSInteger maximumPayloadSize;
@property (readonly, nonatomic) NSInteger maxPendingSendFiles;
@property (readonly, nonatomic) CGFloat flushInterval;
@property (readonly, nonatomic) NSInteger samplingRate;
@property (readonly, nonatomic) CGFloat defaultUploadTimeout;
@property (readonly, nonatomic) CGFloat lowPowerUploadTimeout;


-(id)initWithDictionary:(id)arg0 ;


@end


#endif