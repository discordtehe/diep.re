// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef APMDATATYPEVALIDATOR_H
#define APMDATATYPEVALIDATOR_H


#import <Foundation/Foundation.h>


@interface APMDataTypeValidator : NSObject



+(void)initialize;
+(BOOL)hasReservedPrefixes:(id)arg0 ;
+(BOOL)isValidString:(id)arg0 minLength:(NSInteger)arg1 maxLength:(NSInteger)arg2 type:(NSInteger)arg3 failureCode:(*NSInteger)arg4 ;
+(BOOL)isValidInternalName:(id)arg0 maxLength:(NSInteger)arg1 type:(NSInteger)arg2 failureCode:(*NSInteger)arg3 ;
+(BOOL)isValidPublicName:(id)arg0 maxLength:(NSInteger)arg1 type:(NSInteger)arg2 failureCode:(*NSInteger)arg3 ;
+(BOOL)isValidValue:(id)arg0 minLength:(NSInteger)arg1 maxLength:(NSInteger)arg2 type:(NSInteger)arg3 failureCode:(*NSInteger)arg4 ;
+(BOOL)isValidPublicEventName:(id)arg0 failureCode:(*NSInteger)arg1 ;
+(BOOL)isValidPublicEventParameterName:(id)arg0 failureCode:(*NSInteger)arg1 ;
+(BOOL)isValidPublicEventParameterValue:(id)arg0 failureCode:(*NSInteger)arg1 ;
+(BOOL)isValidInternalEventOrigin:(id)arg0 failureCode:(*NSInteger)arg1 ;
+(BOOL)isValidForwardedEventOrigin:(id)arg0 failureCode:(*NSInteger)arg1 ;
+(BOOL)isValidInternalEventName:(id)arg0 failureCode:(*NSInteger)arg1 ;
+(BOOL)isValidInternalEventParameterName:(id)arg0 failureCode:(*NSInteger)arg1 ;
+(BOOL)isValidInternalEventParameterValue:(id)arg0 failureCode:(*NSInteger)arg1 ;
+(BOOL)isValidPublicUserAttributeName:(id)arg0 failureCode:(*NSInteger)arg1 ;
+(BOOL)isValidPublicUserAttributeValue:(id)arg0 failureCode:(*NSInteger)arg1 ;
+(BOOL)isValidInternalUserAttributeName:(id)arg0 failureCode:(*NSInteger)arg1 ;
+(BOOL)isValidInternalUserAttributeValue:(id)arg0 name:(id)arg1 failureCode:(*NSInteger)arg2 ;
+(BOOL)isValidScreenParameterValue:(id)arg0 failureCode:(*NSInteger)arg1 ;
+(BOOL)isValidConditionalUserPropertyOrigin:(id)arg0 failureCode:(*NSInteger)arg1 ;
+(BOOL)isValidConditionalUserPropertyName:(id)arg0 failureCode:(*NSInteger)arg1 ;
+(BOOL)isValidConditionalUserPropertyValue:(id)arg0 failureCode:(*NSInteger)arg1 ;
+(BOOL)isValidNumericValue:(id)arg0 failureCode:(*NSInteger)arg1 ;
+(BOOL)isValidCurrencyCode:(id)arg0 failureCode:(*NSInteger)arg1 ;


@end


#endif