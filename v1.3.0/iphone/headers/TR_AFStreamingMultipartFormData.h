// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TR_AFSTREAMINGMULTIPARTFORMDATA_H
#define TR_AFSTREAMINGMULTIPARTFORMDATA_H


#import <Foundation/Foundation.h>

@class TR_AFMultipartBodyStream;
@protocol AFMultipartFormData;

@interface TR_AFStreamingMultipartFormData : NSObject <AFMultipartFormData>



@property (copy, nonatomic) NSMutableURLRequest *request; // ivar: _request
@property (nonatomic) NSUInteger stringEncoding; // ivar: _stringEncoding
@property (copy, nonatomic) NSString *boundary; // ivar: _boundary
@property (retain, nonatomic) TR_AFMultipartBodyStream *bodyStream; // ivar: _bodyStream


-(id)initWithURLRequest:(id)arg0 stringEncoding:(NSUInteger)arg1 ;
-(BOOL)appendPartWithFileURL:(id)arg0 name:(id)arg1 error:(*id)arg2 ;
-(BOOL)appendPartWithFileURL:(id)arg0 name:(id)arg1 fileName:(id)arg2 mimeType:(id)arg3 error:(*id)arg4 ;
-(void)appendPartWithInputStream:(id)arg0 name:(id)arg1 fileName:(id)arg2 length:(NSInteger)arg3 mimeType:(id)arg4 ;
-(void)appendPartWithFileData:(id)arg0 name:(id)arg1 fileName:(id)arg2 mimeType:(id)arg3 ;
-(void)appendPartWithFormData:(id)arg0 name:(id)arg1 ;
-(void)appendPartWithHeaders:(id)arg0 body:(id)arg1 ;
-(void)throttleBandwidthWithPacketSize:(NSUInteger)arg0 delay:(CGFloat)arg1 ;


@end


#endif