// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FABAPPLICATIONIDENTIFIERMODEL_H
#define FABAPPLICATIONIDENTIFIERMODEL_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class FABIcon;

@interface FABApplicationIdentifierModel : NSObject

@property (copy, nonatomic) NSDictionary *architectureUUIDMap; // ivar: _architectureUUIDMap
@property (copy, nonatomic) NSString *instanceIdentifier; // ivar: _instanceIdentifier
@property (readonly, nonatomic) ? builtSDK; // ivar: _builtSDK
@property (readonly, nonatomic) ? minimumSDK; // ivar: _minimumSDK
@property (readonly, nonatomic) NSString *builtSDKString;
@property (readonly, nonatomic) NSString *minimumSDKString;
@property (readonly, nonatomic) NSString *installID; // ivar: _installID
@property (readonly, nonatomic) FABIcon *icon;
@property (readonly, nonatomic) NSString *bundleIdentifier; // ivar: _bundleIdentifier


-(id)initWithInstallID:(id)arg0 ;
-(BOOL)computeExecutableInfo;
-(BOOL)computeInstanceIdentifier;


@end


#endif