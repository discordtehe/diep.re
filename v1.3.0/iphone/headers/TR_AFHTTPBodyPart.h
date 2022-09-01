// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TR_AFHTTPBODYPART_H
#define TR_AFHTTPBODYPART_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol NSCopying;

@interface TR_AFHTTPBodyPart : NSObject <NSCopying>

 {
    int _phase;
    NSUInteger _phaseReadOffset;
}


@property (nonatomic) NSUInteger stringEncoding; // ivar: _stringEncoding
@property (retain, nonatomic) NSDictionary *headers; // ivar: _headers
@property (copy, nonatomic) NSString *boundary; // ivar: _boundary
@property (retain, nonatomic) id *body; // ivar: _body
@property (nonatomic) NSUInteger bodyContentLength; // ivar: _bodyContentLength
@property (retain, nonatomic) NSInputStream *inputStream; // ivar: _inputStream
@property (nonatomic) BOOL hasInitialBoundary; // ivar: _hasInitialBoundary
@property (nonatomic) BOOL hasFinalBoundary; // ivar: _hasFinalBoundary
@property (readonly, nonatomic, getter=hasBytesAvailable) BOOL bytesAvailable;
@property (readonly, nonatomic) NSUInteger contentLength;


-(id)init;
-(void)dealloc;
-(id)stringForHeaders;
-(NSInteger)read:(char *)arg0 maxLength:(NSUInteger)arg1 ;
-(NSInteger)readData:(id)arg0 intoBuffer:(char *)arg1 maxLength:(NSUInteger)arg2 ;
-(BOOL)transitionToNextPhase;
-(id)copyWithZone:(struct _NSZone *)arg0 ;


@end


#endif