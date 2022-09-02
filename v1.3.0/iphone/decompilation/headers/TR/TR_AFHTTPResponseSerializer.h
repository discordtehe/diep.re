// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TR_AFHTTPRESPONSESERIALIZER_H
#define TR_AFHTTPRESPONSESERIALIZER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol AFURLResponseSerialization;

@interface TR_AFHTTPResponseSerializer : NSObject <AFURLResponseSerialization>



@property (nonatomic) NSUInteger stringEncoding; // ivar: _stringEncoding
@property (copy, nonatomic) NSIndexSet *acceptableStatusCodes; // ivar: _acceptableStatusCodes
@property (copy, nonatomic) NSSet *acceptableContentTypes; // ivar: _acceptableContentTypes
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(BOOL)validateResponse:(id)arg0 data:(id)arg1 error:(*id)arg2 ;
-(id)responseObjectForResponse:(id)arg0 data:(id)arg1 error:(*id)arg2 ;
-(id)initWithCoder:(id)arg0 ;
-(void)encodeWithCoder:(id)arg0 ;
-(id)copyWithZone:(struct _NSZone *)arg0 ;
+(id)serializer;
+(BOOL)supportsSecureCoding;


@end


#endif