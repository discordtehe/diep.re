// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ISUTILS_H
#define ISUTILS_H


#import <Foundation/Foundation.h>


@interface ISUtils : NSObject



+(id)getGeneralParamsDic;
+(id)getMACAddress;
+(BOOL)isIphoneAppOnIpadDevice;
+(id)platformString;
+(NSUInteger)getFreeDiskspace;
+(NSInteger)getOrientationLockedState;
+(id)encodeToPercentEscapeString:(id)arg0 ;
+(id)decodeFromPercentEscapeString:(id)arg0 ;
+(id)encodeToPercentEscapeStringWithDomain:(id)arg0 andParams:(id)arg1 ;
+(id)colorWithHex:(unsigned int)arg0 ;
+(id)colorWithHexString:(id)arg0 ;
+(void)report_memory:(id)arg0 ;
+(id)getMD5Hash:(id)arg0 ;
+(BOOL)checkRegWithVal:(id)arg0 pattern:(id)arg1 ;
+(BOOL)checkLengthWithVal:(int)arg0 minLength:(int)arg1 maxLength:(int)arg2 ;
+(id)timeInMilliSeconds;
+(NSUInteger)freeDiskSpace;
+(id)timeFormatted:(int)arg0 ;
+(id)URLEncodedString:(id)arg0 ;
+(id)getAppVersion;
+(void)saveValueToUDForKey:(id)arg0 forKey:(id)arg1 ;
+(NSInteger)getIntegerUDForKey:(id)arg0 defaultValue:(NSInteger)arg1 ;
+(CGFloat)getCGFloatUDForKey:(id)arg0 defaultValue:(NSInteger)arg1 ;
+(CGFloat)getDoubleUDForKey:(id)arg0 defaultValue:(NSInteger)arg1 ;
+(BOOL)getBOOLUDForKey:(id)arg0 defaultValue:(NSInteger)arg1 ;
+(id)getStringUDForKey:(id)arg0 defaultValue:(id)arg1 ;
+(id)getObjectFromUDForKey:(id)arg0 ;
+(id)getFullNameForAdUnit:(id)arg0 ;
+(id)UUIDForSession;
+(void)sendAutomationLog:(id)arg0 ;


@end


#endif