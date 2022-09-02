// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef APMASIDENTIFIERMANAGER_H
#define APMASIDENTIFIERMANAGER_H


#import <Foundation/Foundation.h>
#import <AdSupport/AdSupport.h>


@interface APMASIdentifierManager : NSObject {
    ASIdentifierManager *_sharedIdentifierManager;
}


@property (readonly, nonatomic) NSString *advertisingIdentifierString;
@property (readonly, nonatomic) BOOL hasLimitedAdTracking;
@property (readonly, nonatomic) BOOL limitedAdTracking;


-(id)initWithIdentifierManager:(id)arg0 ;
-(BOOL)isAdvertisingTrackingEnabled;
-(id)advertisingIdentifier;
+(id)sharedInstance;
+(id)sharedManager;


@end


#endif