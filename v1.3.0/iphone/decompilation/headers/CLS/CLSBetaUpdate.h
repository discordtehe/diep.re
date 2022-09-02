// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CLSBETAUPDATE_H
#define CLSBETAUPDATE_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface CLSBetaUpdate : NSObject

@property (readonly, nonatomic) NSURL *url; // ivar: _url
@property (readonly, copy, nonatomic) NSString *version; // ivar: _version
@property (readonly, copy, nonatomic) NSString *promptTitle;
@property (readonly, copy, nonatomic) NSString *promptMessage;
@property (readonly, copy, nonatomic) NSString *cancelLabel;
@property (readonly, copy, nonatomic) NSString *installLabel;


-(id)initWithDictionary:(id)arg0 ;
+(id)betaUpdateWithDictionary:(id)arg0 error:(*id)arg1 ;


@end


#endif