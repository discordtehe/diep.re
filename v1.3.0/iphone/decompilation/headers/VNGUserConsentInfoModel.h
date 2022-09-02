// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VNGUSERCONSENTINFOMODEL_H
#define VNGUSERCONSENTINFOMODEL_H


#import <Foundation/Foundation.h>

@protocol NSCoding;
@protocol VNGPersistable;

@interface VNGUserConsentInfoModel : NSObject <NSCoding, VNGPersistable>



@property (readonly, copy, nonatomic) NSString *consentStatus; // ivar: _consentStatus
@property (readonly, copy, nonatomic) NSString *consentSource; // ivar: _consentSource
@property (readonly, copy, nonatomic) NSString *messageVersion; // ivar: _messageVersion
@property (nonatomic) NSInteger consentTimeStamp; // ivar: _consentTimeStamp
@property (nonatomic) BOOL consentRequired; // ivar: _consentRequired
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(void)updateWithConsentStatus:(id)arg0 consentSource:(id)arg1 consentMessageVersion:(id)arg2 consentTimeStamp:(id)arg3 consentRequired:(BOOL)arg4 ;
-(void)encodeWithCoder:(id)arg0 ;
-(id)initWithCoder:(id)arg0 ;
-(id)persistenceKey;
-(id)persistenceCategory;
-(NSInteger)persistenceChannel;
+(id)sharedModel;
+(id)key;
+(id)category;
+(NSInteger)channel;


@end


#endif