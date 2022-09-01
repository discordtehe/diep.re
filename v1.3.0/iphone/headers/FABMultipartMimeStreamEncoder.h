// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FABMULTIPARTMIMESTREAMENCODER_H
#define FABMULTIPARTMIMESTREAMENCODER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol NSStreamDelegate;

@interface FABMultipartMimeStreamEncoder : NSObject <NSStreamDelegate>



@property (nonatomic) NSUInteger length; // ivar: _length
@property (copy, nonatomic) NSString *boundary; // ivar: _boundary
@property (readonly, copy, nonatomic) NSData *headerData;
@property (readonly, copy, nonatomic) NSData *footerData;
@property (retain, nonatomic) NSOutputStream *outputStream; // ivar: _outputStream
@property (readonly, copy, nonatomic) NSString *contentTypeHTTPHeaderValue;
@property (readonly, copy, nonatomic) NSString *contentLengthHTTPHeaderValue;
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithStream:(id)arg0 andBoundary:(id)arg1 ;
-(void)encode:(id)arg0 ;
-(void)beginEncoding;
-(void)endEncoding;
-(void)addFileData:(id)arg0 fileName:(id)arg1 mimeType:(id)arg2 fieldName:(id)arg3 ;
-(void)addValue:(id)arg0 fieldName:(id)arg1 ;
-(void)addFile:(id)arg0 fileName:(id)arg1 mimeType:(id)arg2 fieldName:(id)arg3 ;
-(BOOL)writeBytes:(*void)arg0 ofLength:(NSUInteger)arg1 ;
-(void)writeData:(id)arg0 ;
+(void)populateRequest:(id)arg0 withDataFromEncoder:(id)arg1 ;
+(id)contentTypeHTTPHeaderValueWithBoundary:(id)arg0 ;
+(id)encoderWithStream:(id)arg0 andBoundary:(id)arg1 ;
+(id)generateBoundary;


@end


#endif