// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ANSMETADATA_H
#define ANSMETADATA_H


#import <Foundation/Foundation.h>

@protocol ANSMetadataSerializable;

@interface ANSMetadata : NSObject <ANSMetadataSerializable>



@property (readonly, nonatomic) NSString *APIKey; // ivar: _APIKey
@property (readonly, nonatomic) NSString *betaToken; // ivar: _betaToken
@property (readonly, nonatomic) NSString *buildVersion; // ivar: _buildVersion
@property (readonly, nonatomic) NSString *bundleIdentifier; // ivar: _bundleIdentifier
@property (readonly, nonatomic) NSString *displayVersion; // ivar: _displayVersion
@property (readonly, nonatomic) NSString *executionIdentifier; // ivar: _executionIdentifier
@property (readonly, nonatomic) NSString *hostModel; // ivar: _hostModel
@property (readonly, nonatomic) NSString *installationId; // ivar: _installationId
@property (readonly, nonatomic) NSString *instanceIdentifier; // ivar: _instanceIdentifier
@property (readonly, nonatomic) BOOL isJailbroken; // ivar: _isJailbroken
@property (readonly, nonatomic) NSString *locale; // ivar: _locale
@property (readonly, nonatomic) unsigned int numberOfCores; // ivar: _numberOfCores
@property (readonly, nonatomic) NSString *OSBuildVersion; // ivar: _OSBuildVersion
@property (readonly, nonatomic) NSString *OSDisplayVersion; // ivar: _OSDisplayVersion
@property (readonly, nonatomic) NSString *platform; // ivar: _platform
@property (readonly, nonatomic) unsigned int platformCode;
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithFabric:(id)arg0 betaToken:(id)arg1 ;
-(id)unwrapBetaToken:(id)arg0 ;
-(BOOL)computeIsJailbroken;
-(id)eventName;
-(void)setValueInDictionary:(id)arg0 withKey:(id)arg1 toObject:(id)arg2 ;
-(id)dictionaryRepresentationWithStartTime:(NSUInteger)arg0 ;
+(id)ASManager;


@end


#endif