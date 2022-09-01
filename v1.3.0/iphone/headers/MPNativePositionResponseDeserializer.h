// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPNATIVEPOSITIONRESPONSEDESERIALIZER_H
#define MPNATIVEPOSITIONRESPONSEDESERIALIZER_H


#import <Foundation/Foundation.h>


@interface MPNativePositionResponseDeserializer : NSObject



-(id)clientPositioningForData:(id)arg0 error:(*id)arg1 ;
-(id)parseFixedPositionsObject:(id)arg0 error:(*id)arg1 ;
-(NSInteger)parseRepeatingIntervalObject:(id)arg0 error:(*id)arg1 ;
-(BOOL)validatePositionObject:(id)arg0 error:(*id)arg1 ;
-(BOOL)validateRepeatingIntervalObject:(id)arg0 error:(*id)arg1 ;
-(NSInteger)integerFromDictionary:(id)arg0 forKey:(id)arg1 defaultValue:(NSInteger)arg2 ;
-(void)safeAssignError:(*id)arg0 code:(NSUInteger)arg1 userInfo:(id)arg2 ;
-(void)safeAssignError:(*id)arg0 code:(NSUInteger)arg1 description:(id)arg2 ;
-(void)safeAssignError:(*id)arg0 code:(NSUInteger)arg1 description:(id)arg2 underlyingError:(id)arg3 ;
-(id)deserializationErrorWithCode:(NSUInteger)arg0 userInfo:(id)arg1 ;
+(id)deserializer;


@end


#endif