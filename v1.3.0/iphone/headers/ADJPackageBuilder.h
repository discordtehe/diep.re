// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADJPACKAGEBUILDER_H
#define ADJPACKAGEBUILDER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class ADJConfig;
@class ADJDeviceInfo;
@class ADJActivityState;
@class ADJAttribution;

@interface ADJPackageBuilder : NSObject

@property (nonatomic) CGFloat createdAt; // ivar: _createdAt
@property (weak, nonatomic) ADJConfig *adjustConfig; // ivar: _adjustConfig
@property (weak, nonatomic) ADJDeviceInfo *deviceInfo; // ivar: _deviceInfo
@property (copy, nonatomic) ADJActivityState *activityState; // ivar: _activityState
@property (copy, nonatomic) NSDate *clickTime; // ivar: _clickTime
@property (copy, nonatomic) NSDate *purchaseTime; // ivar: _purchaseTime
@property (copy, nonatomic) NSString *deeplink; // ivar: _deeplink
@property (retain, nonatomic) NSDictionary *attributionDetails; // ivar: _attributionDetails
@property (retain, nonatomic) NSDictionary *deeplinkParameters; // ivar: _deeplinkParameters
@property (copy, nonatomic) ADJAttribution *attribution; // ivar: _attribution


-(id)initWithDeviceInfo:(id)arg0 activityState:(id)arg1 config:(id)arg2 createdAt:(CGFloat)arg3 ;
-(id)buildSessionPackage:(id)arg0 isInDelay:(BOOL)arg1 ;
-(id)buildEventPackage:(id)arg0 sessionParameters:(id)arg1 isInDelay:(BOOL)arg2 ;
-(id)buildClickPackage:(id)arg0 sessionParameters:(id)arg1 ;
-(id)buildInfoPackage:(id)arg0 ;
-(id)buildAttributionPackage;
-(id)defaultActivityPackage;
-(id)idsParameters;
-(id)attributableParameters:(id)arg0 ;
-(id)defaultParameters;
-(void)injectCommonParameters:(id)arg0 ;
-(void)injectDeviceInfoIds:(id)arg0 intoParameters:(id)arg1 ;
-(void)injectDeviceInfo:(id)arg0 intoParameters:(id)arg1 ;
-(void)injectConfig:(id)arg0 intoParameters:(id)arg1 ;
-(void)injectActivityState:(id)arg0 intoParamters:(id)arg1 ;
-(void)injectIosUuid:(id)arg0 intoParamters:(id)arg1 ;
-(void)injectPushToken:(id)arg0 intoParamters:(id)arg1 ;
-(id)eventSuffix:(id)arg0 ;
+(void)parameters:(id)arg0 setString:(id)arg1 forKey:(id)arg2 ;
+(void)parameters:(id)arg0 setInt:(int)arg1 forKey:(id)arg2 ;
+(void)parameters:(id)arg0 setDate1970:(CGFloat)arg1 forKey:(id)arg2 ;
+(void)parameters:(id)arg0 setDate:(id)arg1 forKey:(id)arg2 ;
+(void)parameters:(id)arg0 setDuration:(CGFloat)arg1 forKey:(id)arg2 ;
+(void)parameters:(id)arg0 setDictionaryJson:(id)arg1 forKey:(id)arg2 ;
+(void)parameters:(id)arg0 setDictionary:(id)arg1 forKey:(id)arg2 ;
+(void)parameters:(id)arg0 setBool:(BOOL)arg1 forKey:(id)arg2 ;
+(void)parameters:(id)arg0 setNumber:(id)arg1 forKey:(id)arg2 ;


@end


#endif