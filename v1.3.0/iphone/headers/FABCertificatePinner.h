// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FABCERTIFICATEPINNER_H
#define FABCERTIFICATEPINNER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface FABCertificatePinner : NSObject

@property (readonly, nonatomic) NSArray *certificates; // ivar: _certificates


-(id)initWithCertificates:(id)arg0 ;
-(short)evaluateTrust:(struct __SecTrust *)arg0 result:(*unsigned int)arg1 ;
-(BOOL)handleChallenge:(id)arg0 fromURLSession:(id)arg1 completionHandler:(id)arg2 ;
+(struct __SecCertificate *)createCertificationWithData:(*void)arg0 length:(NSUInteger)arg1 ;


@end


#endif