// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADBIDPAYLOAD_H
#define FBADBIDPAYLOAD_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface FBAdBidPayload : NSObject

@property (readonly, copy, nonatomic) NSString *payloadType; // ivar: _payloadType
@property (nonatomic) NSInteger bidID; // ivar: _bidID
@property (readonly, copy, nonatomic) NSData *serverResponse; // ivar: _serverResponse
@property (readonly, copy, nonatomic) NSString *bidTimeToken; // ivar: _bidTimeToken
@property (readonly, nonatomic) BOOL hasServerResponse;
@property (readonly, nonatomic) BOOL hasBidID;


-(id)initWithJsonData:(id)arg0 placementID:(id)arg1 templateID:(NSInteger)arg2 error:(*id)arg3 ;
-(BOOL)isPayloadValid:(id)arg0 placementID:(id)arg1 templateID:(NSInteger)arg2 error:(*id)arg3 ;
+(void)initialize;
+(NSInteger)adTemplateIdWithJsonData:(id)arg0 ;


@end


#endif