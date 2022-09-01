// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef SSAHELPERMETHODS_H
#define SSAHELPERMETHODS_H


#import <Foundation/Foundation.h>


@interface SSAHelperMethods : NSObject



+(id)decodeJSONObject:(id)arg0 forEncoding:(NSUInteger)arg1 withError:(*id)arg2 ;
+(id)applicationKeyWindow;
+(id)getGeneralParamsDic;
+(id)getMACAddress;
+(BOOL)isIphoneAppOnIpadDevice;
+(id)platformString;
+(NSUInteger)getFreeDiskspace;
+(id)encodeToPercentEscapeString:(id)arg0 ;
+(id)decodeFromPercentEscapeString:(id)arg0 ;
+(id)encodeToPercentEscapeStringWithDomain:(id)arg0 andParams:(id)arg1 ;
+(id)deepEncodeValuesInDictionary:(id)arg0 decodeFirst:(BOOL)arg1 ;
+(id)colorWithHex:(unsigned int)arg0 ;
+(id)colorWithHexString:(id)arg0 ;
+(id)getMD5Hash:(id)arg0 ;
+(id)topMostController;
+(void)setApplicationStatusBarHidden:(BOOL)arg0 ;
+(id)productTypeBySSAType:(NSUInteger)arg0 ;
+(struct CGRect )frameForButtonFromParamsDictionary:(id)arg0 relativeToFrame:(struct CGRect )arg1 ;
+(id)stringFromData:(id)arg0 encoding:(NSUInteger)arg1 ;
+(BOOL)isStringExistAndNotEmpty:(id)arg0 ;
+(BOOL)areKeysExistInDictionary:(id)arg0 keys:(id)arg1 ;
+(id)dictionaryFromJsonString:(id)arg0 error:(*id)arg1 ;
+(id)errorWithReason:(id)arg0 code:(NSInteger)arg1 domain:(id)arg2 ;
+(id)JSONStringFromDictionary:(id)arg0 error:(*id)arg1 ;


@end


#endif