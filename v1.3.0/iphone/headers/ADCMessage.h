// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCMESSAGE_H
#define ADCMESSAGE_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface ADCMessage : NSObject

@property (retain, nonatomic) NSDictionary *dict; // ivar: _dict
@property (retain, nonatomic) NSString *type; // ivar: _type
@property (nonatomic) int target; // ivar: _target
@property (nonatomic) int origin; // ivar: _origin
@property (nonatomic) int identifier; // ivar: _identifier


-(id)initFromSafeDict:(id)arg0 ;
-(id)initFromDict:(id)arg0 ;
-(id)initFromDict:(id)arg0 typeOverride:(id)arg1 ;
-(id)initFromJSONObjectString:(id)arg0 ;
-(id)messageReplyWithDict:(id)arg0 ;
-(void)send;
-(id)description;
+(id)nativeMessageWithType:(id)arg0 contents:(id)arg1 ;
+(id)nativeMessageWithType:(id)arg0 identifier:(NSUInteger)arg1 contents:(id)arg2 ;
+(id)controllerMessageWithType:(id)arg0 contents:(id)arg1 ;
+(id)controllerCustomMessageWithContent:(id)arg0 ;
+(id)nativeCustomMessageWithContent:(id)arg0 ;
+(id)controllerMessageWithType:(id)arg0 identifier:(NSUInteger)arg1 contents:(id)arg2 ;
+(id)messagesFromJSONArray:(id)arg0 ;
+(id)messagesFromJSONArrayString:(id)arg0 ;
+(id)messageFromIncomingDict:(id)arg0 ;
+(id)dictionaryFromMessage:(id)arg0 ;
+(id)arrayFromMessages:(id)arg0 ;
+(id)stringFromMessages:(id)arg0 ;
+(id)stringValueFromMessage:(id)arg0 withKey:(id)arg1 ;
+(id)numberValueFromMessage:(id)arg0 withKey:(id)arg1 ;
+(id)dictionaryValueFromMessage:(id)arg0 withKey:(id)arg1 ;
+(id)arrayValueFromMessage:(id)arg0 withKey:(id)arg1 ;
+(struct CGRect )rectValueFromMessage:(id)arg0 ;


@end


#endif