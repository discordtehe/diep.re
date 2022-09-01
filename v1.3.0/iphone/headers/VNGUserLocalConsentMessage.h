// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VNGUSERLOCALCONSENTMESSAGE_H
#define VNGUSERLOCALCONSENTMESSAGE_H


#import <Foundation/Foundation.h>

@protocol NSCoding;
@protocol VNGPersistable;

@interface VNGUserLocalConsentMessage : NSObject <NSCoding, VNGPersistable>



@property (copy, nonatomic) NSString *consentMessageTitleText; // ivar: _consentMessageTitleText
@property (copy, nonatomic) NSString *consentMessageBodyText; // ivar: _consentMessageBodyText
@property (copy, nonatomic) NSString *consentAcceptButtonText; // ivar: _consentAcceptButtonText
@property (copy, nonatomic) NSString *consentDenyButtonText; // ivar: _consentDenyButtonText
@property (copy, nonatomic) NSString *consentMessageVersion; // ivar: _consentMessageVersion
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithConsentTitle:(id)arg0 consentBody:(id)arg1 acceptText:(id)arg2 denyText:(id)arg3 version:(id)arg4 ;
-(id)init;
-(void)updateConsentTitle:(id)arg0 consentBody:(id)arg1 acceptText:(id)arg2 denyText:(id)arg3 version:(id)arg4 ;
-(void)encodeWithCoder:(id)arg0 ;
-(id)initWithCoder:(id)arg0 ;
-(id)persistenceKey;
-(id)persistenceCategory;
-(NSInteger)persistenceChannel;
+(id)sharedMessage;
+(id)key;
+(id)category;
+(NSInteger)channel;


@end


#endif