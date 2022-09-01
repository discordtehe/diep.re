// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TR_AFMULTIPARTBODYSTREAM_H
#define TR_AFMULTIPARTBODYSTREAM_H

@class NSEnumerator;

#import <CoreFoundation/CoreFoundation.h>
#import <Foundation/Foundation.h>

@class TR_AFHTTPBodyPart;
@protocol NSCopying;
@protocol NSStreamDelegate;
@protocol NSStreamDelegate;

@interface TR_AFMultipartBodyStream : NSInputStream <NSCopying, NSStreamDelegate>

 {
    id<NSStreamDelegate> *delegate;
    NSUInteger streamStatus;
    NSError *streamError;
}


@property (nonatomic) NSUInteger stringEncoding; // ivar: _stringEncoding
@property (retain, nonatomic) NSMutableArray *HTTPBodyParts; // ivar: _HTTPBodyParts
@property (retain, nonatomic) NSEnumerator *HTTPBodyPartEnumerator; // ivar: _HTTPBodyPartEnumerator
@property (retain, nonatomic) TR_AFHTTPBodyPart *currentHTTPBodyPart; // ivar: _currentHTTPBodyPart
@property (retain, nonatomic) NSOutputStream *outputStream; // ivar: _outputStream
@property (retain, nonatomic) NSMutableData *buffer; // ivar: _buffer
@property (nonatomic) NSUInteger numberOfBytesInPacket; // ivar: _numberOfBytesInPacket
@property (nonatomic) CGFloat delay; // ivar: _delay
@property (retain, nonatomic) NSInputStream *inputStream; // ivar: _inputStream
@property (readonly, nonatomic) NSUInteger contentLength;
@property (readonly, nonatomic, getter=isEmpty) BOOL empty;
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithStringEncoding:(NSUInteger)arg0 ;
-(void)setInitialAndFinalBoundaries;
-(void)appendHTTPBodyPart:(id)arg0 ;
-(NSInteger)read:(char *)arg0 maxLength:(NSUInteger)arg1 ;
-(BOOL)getBuffer:(*char *)arg0 length:(*NSUInteger)arg1 ;
-(BOOL)hasBytesAvailable;
-(void)open;
-(void)close;
-(id)propertyForKey:(id)arg0 ;
-(BOOL)setProperty:(id)arg0 forKey:(id)arg1 ;
-(void)scheduleInRunLoop:(id)arg0 forMode:(id)arg1 ;
-(void)removeFromRunLoop:(id)arg0 forMode:(id)arg1 ;
-(void)_scheduleInCFRunLoop:(struct __CFRunLoop *)arg0 forMode:(struct __CFString *)arg1 ;
-(void)_unscheduleFromCFRunLoop:(struct __CFRunLoop *)arg0 forMode:(struct __CFString *)arg1 ;
-(BOOL)_setCFClientFlags:(NSUInteger)arg0 callback:(*unk)arg1 context:(struct ? *)arg2 ;
-(id)copyWithZone:(struct _NSZone *)arg0 ;
-(id)delegate;
-(void)setDelegate:(id)arg0 ;
-(NSUInteger)streamStatus;
-(void)setStreamStatus:(NSUInteger)arg0 ;
-(id)streamError;
-(void)setStreamError:(id)arg0 ;


@end


#endif