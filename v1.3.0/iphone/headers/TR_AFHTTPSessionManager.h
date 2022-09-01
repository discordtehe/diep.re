// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TR_AFHTTPSESSIONMANAGER_H
#define TR_AFHTTPSESSIONMANAGER_H

@class AFURLSessionManager, TR_AFHTTPRequestSerializer<AFURLRequestSerialization>, TR_AFHTTPResponseSerializer<AFURLResponseSerialization>;

#import <CoreFoundation/CoreFoundation.h>

@protocol NSSecureCoding;
@protocol NSCopying;

@interface TR_AFHTTPSessionManager : AFURLSessionManager <NSSecureCoding, NSCopying>



@property (retain, nonatomic) NSURL *baseURL; // ivar: _baseURL
@property (retain, nonatomic) TR_AFHTTPRequestSerializer<AFURLRequestSerialization> *requestSerializer; // ivar: _requestSerializer
@property (retain, nonatomic) TR_AFHTTPResponseSerializer<AFURLResponseSerialization> *responseSerializer;


-(id)init;
-(id)initWithBaseURL:(id)arg0 ;
-(id)initWithSessionConfiguration:(id)arg0 ;
-(id)initWithBaseURL:(id)arg0 sessionConfiguration:(id)arg1 ;
// -(id)GET:(id)arg0 parameters:(id)arg1 success:(id)arg2 failure:(unk)arg3  ;
// -(id)GET:(id)arg0 parameters:(id)arg1 progress:(id)arg2 success:(unk)arg3 failure:(id)arg4  ;
// -(id)HEAD:(id)arg0 parameters:(id)arg1 success:(id)arg2 failure:(unk)arg3  ;
// -(id)POST:(id)arg0 parameters:(id)arg1 success:(id)arg2 failure:(unk)arg3  ;
// -(id)POST:(id)arg0 parameters:(id)arg1 progress:(id)arg2 success:(unk)arg3 failure:(id)arg4  ;
// -(id)POST:(id)arg0 parameters:(id)arg1 constructingBodyWithBlock:(id)arg2 success:(unk)arg3 failure:(id)arg4  ;
// -(id)POST:(id)arg0 parameters:(id)arg1 constructingBodyWithBlock:(id)arg2 progress:(unk)arg3 success:(id)arg4 failure:(unk)arg5  ;
// -(id)PUT:(id)arg0 parameters:(id)arg1 success:(id)arg2 failure:(unk)arg3  ;
// -(id)PATCH:(id)arg0 parameters:(id)arg1 success:(id)arg2 failure:(unk)arg3  ;
// -(id)DELETE:(id)arg0 parameters:(id)arg1 success:(id)arg2 failure:(unk)arg3  ;
// -(id)dataTaskWithHTTPMethod:(id)arg0 URLString:(id)arg1 parameters:(id)arg2 uploadProgress:(id)arg3 downloadProgress:(unk)arg4 success:(id)arg5 failure:(unk)arg6  ;
-(id)description;
-(id)initWithCoder:(id)arg0 ;
-(void)encodeWithCoder:(id)arg0 ;
-(id)copyWithZone:(struct _NSZone *)arg0 ;
+(id)manager;
+(BOOL)supportsSecureCoding;


@end


#endif