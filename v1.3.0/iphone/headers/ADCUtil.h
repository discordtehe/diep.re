// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCUTIL_H
#define ADCUTIL_H


#import <Foundation/Foundation.h>


@interface ADCUtil : NSObject



+(id)errorWithMessage:(id)arg0 andCode:(NSUInteger)arg1 ;
+(id)errorWithMessage:(id)arg0 ;
+(id)temporaryFileURLWithPrefix:(id)arg0 ;
+(id)JSONStringFromJSONObject:(id)arg0 ;
+(id)JSONObjectFromJSONString:(id)arg0 ;
+(id)JSONObjectFromData:(id)arg0 ;
+(id)JSONObjectFromFilepath:(id)arg0 ;
+(id)dataFromJSONObject:(id)arg0 ;
+(id)JSONArrayFromData:(id)arg0 ;
+(id)AES256EncryptData:(id)arg0 withKey:(id)arg1 ;
+(id)AES256DecryptData:(id)arg0 withKey:(id)arg1 ;
+(id)colorWithHexString:(id)arg0 ;
+(id)colorWithRGBHex:(unsigned int)arg0 ;
+(id)colorWithRGBAHex:(unsigned int)arg0 ;
+(id)getUUID;
+(id)sha1:(id)arg0 ;
+(id)appBundleInfo;
+(NSUInteger)appSupportedOrientations;
+(NSUInteger)getOrientationMaskFromAdColonyOrientation:(NSInteger)arg0 ;
+(NSInteger)getAdColonyOrientationFromOrientationMask:(NSUInteger)arg0 ;
+(NSInteger)getAdColonyOrientation:(NSInteger)arg0 ;
+(BOOL)validateInterfaceOrientationOfFullscreenView:(id)arg0 ;
+(struct UIEdgeInsets )getSafeAreaInsets;


@end


#endif